part of 'search_notifier.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState({
    required List<SearchedArtist> artists,
    @Default(false) bool nextPageAvailable,
  }) = _SearchState;
}
