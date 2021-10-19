import 'package:flutter_fm/artist_detail/artist_detail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_detail_notifier.freezed.dart';
part 'artist_detail_state.dart';

final artistDetailNotifierProvider = StateNotifierProvider.autoDispose<
    ArtistDetailNotifier, AsyncValue<ArtistDetailState>>(
  (ref) => ArtistDetailNotifier(ref.read),
);

class ArtistDetailNotifier
    extends StateNotifier<AsyncValue<ArtistDetailState>> {
  final ArtistDetailRepository _artistDetailRepository;
  ArtistDetailNotifier(Reader read)
      : _artistDetailRepository = read(artistDetailRepositoryProvider),
        super(const AsyncValue.loading());

  AsyncValue<ArtistDetailState>? _latestState;

  Future<void> fetchDetails(String mbid) async {
    state = AsyncValue.loading(previous: _latestState);

    try {
      final details = await _artistDetailRepository.fetchArtistDetails(mbid);
      final similarArtists =
          await _artistDetailRepository.fetchSimilarArtists(mbid);

      _latestState = AsyncValue.data(
        ArtistDetailState(
          details: details,
          similarArtists: similarArtists,
        ),
      );

      state = _latestState!;
    } catch (e) {
      state = AsyncValue.error(
        e,
        previous: _latestState?.asData,
      );
    }
  }
}
