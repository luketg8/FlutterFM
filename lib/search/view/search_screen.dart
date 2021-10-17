import 'package:flutter/material.dart';
import 'package:flutter_fm/artist_detail/artist_detail.dart';
import 'package:flutter_fm/core/view/context_extensions.dart';
import 'package:flutter_fm/core/view/error_message_utils.dart';
import 'package:flutter_fm/search/search.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchNotifier = ref.watch(searchNotifierProvider.notifier);
    final searchResults = ref.watch(searchNotifierProvider);

    ref.listen(
      searchNotifierProvider,
      (state) {
        if (state is AsyncError) {
          ScaffoldMessenger.of(context)
            ..removeCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(
                  ErrorMessageUtils.resolveErrorMessage(
                    context,
                    state.error,
                  ),
                ),
              ),
            );
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/logo.svg',
          height: 32,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SearchBar(
              onSearched: (term) => searchNotifier.search(term),
            ),
          ),
          Expanded(
            child: Builder(
              builder: (context) {
                if (searchResults == null) {
                  return Text(context.strings.searchForName);
                }

                return searchResults.when(
                  data: (results) {
                    if (results.artists.isEmpty) {
                      return Center(
                        child: Text(context.strings.noSearchResults),
                      );
                    }

                    return _SearchResults(
                      results,
                      onNextPageRequested: () => searchNotifier.fetchNextPage(),
                    );
                  },
                  error: (e, __, results) {
                    if (results != null) {
                      return _SearchResults(
                        results.asData!.value,
                        onNextPageRequested: () =>
                            searchNotifier.fetchNextPage(),
                      );
                    }

                    return Text(
                      ErrorMessageUtils.resolveErrorMessage(
                        context,
                        e,
                      ),
                    );
                  },
                  loading: (_) => Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchResults extends StatefulWidget {
  final SearchState _searchResults;
  final VoidCallback onNextPageRequested;

  const _SearchResults(
    this._searchResults, {
    Key? key,
    required this.onNextPageRequested,
  }) : super(key: key);

  @override
  __SearchResultsState createState() => __SearchResultsState();
}

class __SearchResultsState extends State<_SearchResults> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    _controller.addListener(_paginationListener);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_paginationListener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _controller,
      itemCount: widget._searchResults.artists.length,
      separatorBuilder: (_, __) => const SizedBox(height: 15),
      itemBuilder: (context, idx) {
        //TODO: Pagination support

        final artist = widget._searchResults.artists[idx];

        return ListTile(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => ArtistDetailScreen(artist.name),
            ),
          ),
          leading: const Icon(Icons.music_note),
          title: Text(artist.name),
        );
      },
    );
  }

  void _paginationListener() {
    if (!_controller.hasClients || !widget._searchResults.nextPageAvailable) {
      return;
    }

    final maxScroll = _controller.position.maxScrollExtent;
    final currentScroll = _controller.offset;

    if (currentScroll >= (maxScroll * 0.9)) {
      widget.onNextPageRequested();
    }
  }
}
