import 'package:flutter_fm/core/domain/converter_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'similar_artist.freezed.dart';
part 'similar_artist.g.dart';

@freezed
class SimilarArtist with _$SimilarArtist {
  factory SimilarArtist({
    required String? mbid,
    required String name,
    required String url,
    @JsonKey(fromJson: ConverterUtils.parseBool) required bool streamable,
  }) = _SimilarArtist;

  factory SimilarArtist.fromJson(Map<String, dynamic> json) =>
      _$SimilarArtistFromJson(json);
}
