import 'package:flutter_fm/artist_detail/artist_detail.dart';
import 'package:flutter_fm/core/data/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final artistDetailRepositoryProvider = Provider<ArtistDetailRepository>(
  (ref) => ArtistDetailRepository(ref.read),
);

class ArtistDetailRepository {
  final ApiClient _apiClient;

  ArtistDetailRepository(Reader read) : _apiClient = read(apiClientProvider);

  Future<DetailedArtist> fetchArtistDetails(String mbid) async {
    final response = await _apiClient.makeRequest(
      {
        'method': 'artist.getInfo',
        'mbid': mbid,
      },
    );

    return DetailedArtist.fromJson(response['artist']);
  }

  Future<List<SimilarArtist>> fetchSimilarArtists(String mbid) async {
    final response = await _apiClient.makeRequest(
      {
        'method': 'artist.getSimilar',
        'mbid': mbid,
      },
    );

    return List<SimilarArtist>.from(
      response['similarartists']['artist'].map(
        (rawArtist) => SimilarArtist.fromJson(rawArtist),
      ),
    );
  }
}
