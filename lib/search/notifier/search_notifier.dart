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

  Future<void> search(String name) async {
    state =
        AsyncValue.loading(previous: state is AsyncData ? state!.asData : null);

    state = await AsyncValue.guard(
      () async => _searchRepository.search(name),
    );
  }
}
