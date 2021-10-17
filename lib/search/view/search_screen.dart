import 'package:flutter/material.dart';
import 'package:flutter_fm/core/view/context_extensions.dart';
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
          //TODO: Show snackbar
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
          SizedBox(height: 15),
          TextField(
            decoration: InputDecoration(
              hintText: context.strings.searchPrompt,
            ),
            onSubmitted: (term) => searchNotifier.search(term),
          ),
          Expanded(
            child: Builder(
              builder: (context) {
                if (searchResults == null) {
                  return Text(context.strings.searchForName);
                }

                return searchResults.when(
                  data: (results) {
                    if (!results.hasResults) {
                      return Center(
                        child: Text(context.strings.noSearchResults),
                      );
                    }

                    return _SearchResults(results);
                  },
                  error: (e, __, results) {
                    if (results != null) {
                      return _SearchResults(results.asData!.value);
                    }

                    return Text('Error');
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

class _SearchResults extends StatelessWidget {
  final SearchResults _searchResults;

  const _SearchResults(this._searchResults, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _searchResults.resultCount,
      separatorBuilder: (_, __) => SizedBox(height: 15),
      itemBuilder: (context, idx) {
        //TODO: Pagination support

        final artist = _searchResults.artistmatches.artist[idx];

        return ListTile(
          title: Text(artist.name),
        );
      },
    );
  }
}
