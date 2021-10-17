import 'package:flutter_fm/search/search.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchNotifierProvider =
    StateNotifierProvider<SearchNotifier, AsyncValue<SearchResults>?>(
  (ref) => SearchNotifier(ref.read),
);

class SearchNotifier extends StateNotifier<AsyncValue<SearchResults>?> {
  final SearchRepository _searchRepository;
  SearchNotifier(Reader read)
      : _searchRepository = read(searchRepositoryProvider),
        super(null);

  AsyncValue<SearchResults>? _latestResults;

  Future<void> search(String name) async {
    state = AsyncValue.loading();

    try {
      final results = await _searchRepository.search(name);

      _latestResults = AsyncValue.data(results);

      state = _latestResults;
    } catch (e) {
      state = AsyncValue.error(
        e,
        previous: _latestResults != null ? _latestResults!.asData : null,
      );
    }
  }
}
