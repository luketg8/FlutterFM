import 'package:flutter_fm/core/data/api_client.dart';
import 'package:flutter_fm/search/search.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchRepositoryProvider = Provider<SearchRepository>(
  (ref) => SearchRepository(ref.read),
);

class SearchRepository {
  final ApiClient _apiClient;

  SearchRepository(Reader read) : _apiClient = read(apiClientProvider);

  Future<SearchResults> search(String name, [int page = 1]) async {
    final response = await _apiClient.makeRequest(
      {
        'method': 'artist.search',
        'page': '$page',
        'artist': name,
      },
    );

    return SearchResults.fromJson(response['results']);
  }
}
