part of 'artist_detail_notifier.dart';

@freezed
class ArtistDetailState with _$ArtistDetailState {
  factory ArtistDetailState({
    required DetailedArtist details,
    required List<SimilarArtist> similarArtists,
  }) = _ArtistDetailState;
}
