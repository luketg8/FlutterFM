import 'package:flutter_fm/core/domain/converter_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_artist.freezed.dart';
part 'detailed_artist.g.dart';

@freezed
class DetailedArtist with _$DetailedArtist {
  factory DetailedArtist({
    required String mbid,
    required String name,
    required String url,
    required ArtistStats stats,
    required ArtistBio bio,
    required ArtistTags tags,
    @JsonKey(fromJson: ConverterUtils.parseBool) required bool streamable,
    @JsonKey(fromJson: ConverterUtils.parseBool) required bool ontour,
  }) = _DetailedArtist;

  factory DetailedArtist.fromJson(Map<String, dynamic> json) =>
      _$DetailedArtistFromJson(json);
}

@freezed
class ArtistStats with _$ArtistStats {
  factory ArtistStats({
    required String listeners,
    required String playcount,
  }) = _ArtistStats;

  factory ArtistStats.fromJson(Map<String, dynamic> json) =>
      _$ArtistStatsFromJson(json);
}

@freezed
class ArtistBio with _$ArtistBio {
  factory ArtistBio({
    required String summary,
    required String content,
  }) = _ArtistBio;

  factory ArtistBio.fromJson(Map<String, dynamic> json) =>
      _$ArtistBioFromJson(json);
}

@freezed
class ArtistTags with _$ArtistTags {
  factory ArtistTags({
    required List<ArtistTag> tag,
  }) = _ArtistTags;

  factory ArtistTags.fromJson(Map<String, dynamic> json) =>
      _$ArtistTagsFromJson(json);
}

@freezed
class ArtistTag with _$ArtistTag {
  factory ArtistTag({
    required String name,
    required String url,
  }) = _ArtistTag;

  factory ArtistTag.fromJson(Map<String, dynamic> json) =>
      _$ArtistTagFromJson(json);
}
