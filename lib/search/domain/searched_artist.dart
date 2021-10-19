import 'package:flutter_fm/core/domain/converter_utils.dart';
import 'package:flutter_fm/core/domain/lastfm_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'searched_artist.freezed.dart';
part 'searched_artist.g.dart';

@freezed
class SearchedArtist with _$SearchedArtist {
  factory SearchedArtist({
    required String mbid,
    required String name,
    required String listeners,
    required String url,
    @JsonKey(fromJson: ConverterUtils.parseBool) required bool streamable,
    required List<LastFMImage> image,
  }) = _SearchedArtist;

  factory SearchedArtist.fromJson(Map<String, dynamic> json) =>
      _$SearchedArtistFromJson(json);
}
