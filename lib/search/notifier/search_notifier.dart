import 'package:flutter_fm/search/search.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_notifier.freezed.dart';
part 'search_state.dart';

final searchNotifierProvider =
    StateNotifierProvider<SearchNotifier, AsyncValue<SearchState>?>(
  (ref) => SearchNotifier(ref.read),
);

class SearchNotifier extends StateNotifier<AsyncValue<SearchState>?> {
  final SearchRepository _searchRepository;
  SearchNotifier(Reader read)
      : _searchRepository = read(searchRepositoryProvider),
        super(null);

  int? _lastFetchedPageIdx;
  String? _lastSearchedTerm;
  AsyncValue<SearchState>? _latestResults;

  Future<void> search(String name) async {
    state = AsyncValue.loading(previous: _latestResults?.asData);

    try {
      final results = await _searchRepository.search(name);

      _lastFetchedPageIdx = 1;
      _lastSearchedTerm = name;
      _latestResults = AsyncValue.data(
        SearchState(
          artists: results.artistmatches.artist,
          nextPageAvailable: _nextPageAvailable(results),
        ),
      );

      state = _latestResults;
    } catch (e) {
      state = AsyncValue.error(
        e,
        previous: _latestResults?.asData,
      );
    }
  }

  Future<void> fetchNextPage() async {
    try {
      final incrementedPageIndex = _lastFetchedPageIdx! + 1;

      final existingArtists = _latestResults!.asData!.value.artists;

      final results = await _searchRepository.search(
        _lastSearchedTerm!,
        incrementedPageIndex,
      );

      _lastFetchedPageIdx = incrementedPageIndex;

      _latestResults = AsyncValue.data(
        SearchState(
          artists: [
            ...existingArtists,
            ...results.artistmatches.artist,
          ],
          nextPageAvailable: _nextPageAvailable(results),
        ),
      );

      state = _latestResults;
    } catch (e) {
      state = AsyncValue.error(
        e,
        previous: _latestResults?.asData,
      );
    }
  }

  bool _nextPageAvailable(SearchResults results) {
    if (!results.hasResults) {
      return false;
    }

    final numberOfItemsRemaining =
        results.totalResults - (results.itemsPerPage + results.startIndex);

    return numberOfItemsRemaining > 0;
  }
}
