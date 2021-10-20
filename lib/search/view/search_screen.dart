import 'package:flutter/material.dart';
import 'package:flutter_fm/core/domain/network_failure.dart';
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
                    state.error as NetworkFailure,
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
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.music_note,
                          size: 48,
                        ),
                        const SizedBox(height: 5),
                        Text(context.strings.searchForName),
                      ],
                    ),
                  );
                }

                return searchResults.when(
                  data: (results) {
                    if (results.artists.isEmpty) {
                      return Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.error_outline,
                              size: 48,
                            ),
                            const SizedBox(height: 5),
                            Text(context.strings.noSearchResults),
                          ],
                        ),
                      );
                    }

                    return SearchResultsList(
                      results,
                      onNextPageRequested: () => searchNotifier.fetchNextPage(),
                    );
                  },
                  error: (e, __, results) {
                    if (results != null) {
                      return SearchResultsList(
                        results.asData!.value,
                        onNextPageRequested: () =>
                            searchNotifier.fetchNextPage(),
                      );
                    }

                    return Text(
                      ErrorMessageUtils.resolveErrorMessage(
                        context,
                        e as NetworkFailure,
                      ),
                    );
                  },
                  loading: (_) => const Center(
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
