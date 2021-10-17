part of 'search_notifier.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState({
    required List<SimpleArtist> artists,
    @Default(false) bool nextPageAvailable,
  }) = _SearchState;

  factory SearchState.fromJson(Map<String, dynamic> json) =>
      _$SearchStateFromJson(json);
}
