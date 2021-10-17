import 'package:flutter_fm/artist_detail/data/artist_detail_repository.dart';
import 'package:flutter_fm/artist_detail/domain/detailed_artist.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final artistDetailNotifierProvider = StateNotifierProvider.autoDispose<
    ArtistDetailNotifier, AsyncValue<DetailedArtist>>(
  (ref) => ArtistDetailNotifier(ref.read),
);

class ArtistDetailNotifier extends StateNotifier<AsyncValue<DetailedArtist>> {
  final ArtistDetailRepository _artistDetailRepository;
  ArtistDetailNotifier(Reader read)
      : _artistDetailRepository = read(artistDetailRepositoryProvider),
        super(const AsyncValue.loading());

  Future<void> fetchDetails(String name) async {
    state =
        AsyncValue.loading(previous: state is AsyncData ? state.asData : null);

    state = await AsyncValue.guard(
      () async => _artistDetailRepository.fetchArtistDetails(name),
    );
  }
}
