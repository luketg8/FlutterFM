import 'package:flutter_fm/core/domain/converter_utils.dart';
import 'package:flutter_fm/core/domain/lastfm_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'simple_artist.freezed.dart';
part 'simple_artist.g.dart';

@freezed
class SimpleArtist with _$SimpleArtist {
  factory SimpleArtist({
    required String mbid,
    required String name,
    required String listeners,
    required String url,
    @JsonKey(fromJson: ConverterUtils.parseBool) required bool streamable,
    required List<LastFMImage> image,
  }) = _SimpleArtist;

  factory SimpleArtist.fromJson(Map<String, dynamic> json) =>
      _$SimpleArtistFromJson(json);
}
