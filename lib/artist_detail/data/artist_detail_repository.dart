import 'package:flutter_fm/artist_detail/domain/detailed_artist.dart';
import 'package:flutter_fm/core/data/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final artistDetailRepositoryProvider = Provider<ArtistDetailRepository>(
  (ref) => ArtistDetailRepository(ref.read),
);

class ArtistDetailRepository {
  final ApiClient _apiClient;

  ArtistDetailRepository(Reader read) : _apiClient = read(apiClientProvider);

  Future<DetailedArtist> fetchArtistDetails(String name) async {
    final response = await _apiClient.makeRequest(
      {
        'method': 'artist.getInfo',
        'artist': name,
      },
    );

    return DetailedArtist.fromJson(response['artist']);
  }
}
