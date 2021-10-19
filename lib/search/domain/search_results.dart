import 'package:flutter_fm/core/domain/converter_utils.dart';
import 'package:flutter_fm/search/domain/searched_artist.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_results.freezed.dart';
part 'search_results.g.dart';

@freezed
class SearchResults with _$SearchResults {
  factory SearchResults({
    @JsonKey(name: 'opensearch:totalResults', fromJson: ConverterUtils.parseInt)
        required int totalResults,
    @JsonKey(name: 'opensearch:startIndex', fromJson: ConverterUtils.parseInt)
        required int startIndex,
    @JsonKey(name: 'opensearch:itemsPerPage', fromJson: ConverterUtils.parseInt)
        required int itemsPerPage,
    required ArtistResults artistmatches,
  }) = _SearchResults;

  factory SearchResults.fromJson(Map<String, dynamic> json) =>
      _$SearchResultsFromJson(json);
}

@freezed
class ArtistResults with _$ArtistResults {
  factory ArtistResults({
    required List<SearchedArtist> artist,
  }) = _ArtistResults;

  factory ArtistResults.fromJson(Map<String, dynamic> json) =>
      _$ArtistResultsFromJson(json);
}

extension SearchResultsX on SearchResults {
  int get resultCount => artistmatches.artist.length;
  bool get hasResults => resultCount > 0;
}
