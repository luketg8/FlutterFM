// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailedArtist _$$_DetailedArtistFromJson(Map<String, dynamic> json) =>
    _$_DetailedArtist(
      mbid: json['mbid'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      stats: ArtistStats.fromJson(json['stats'] as Map<String, dynamic>),
      bio: ArtistBio.fromJson(json['bio'] as Map<String, dynamic>),
      tags: ArtistTags.fromJson(json['tags'] as Map<String, dynamic>),
      streamable: ConverterUtils.parseBool(json['streamable'] as String),
      ontour: ConverterUtils.parseBool(json['ontour'] as String),
    );

Map<String, dynamic> _$$_DetailedArtistToJson(_$_DetailedArtist instance) =>
    <String, dynamic>{
      'mbid': instance.mbid,
      'name': instance.name,
      'url': instance.url,
      'stats': instance.stats.toJson(),
      'bio': instance.bio.toJson(),
      'tags': instance.tags.toJson(),
      'streamable': instance.streamable,
      'ontour': instance.ontour,
    };

_$_ArtistStats _$$_ArtistStatsFromJson(Map<String, dynamic> json) =>
    _$_ArtistStats(
      listeners: json['listeners'] as String,
      playcount: json['playcount'] as String,
    );

Map<String, dynamic> _$$_ArtistStatsToJson(_$_ArtistStats instance) =>
    <String, dynamic>{
      'listeners': instance.listeners,
      'playcount': instance.playcount,
    };

_$_ArtistBio _$$_ArtistBioFromJson(Map<String, dynamic> json) => _$_ArtistBio(
      summary: json['summary'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_ArtistBioToJson(_$_ArtistBio instance) =>
    <String, dynamic>{
      'summary': instance.summary,
      'content': instance.content,
    };

_$_ArtistTags _$$_ArtistTagsFromJson(Map<String, dynamic> json) =>
    _$_ArtistTags(
      tag: (json['tag'] as List<dynamic>)
          .map((e) => ArtistTag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ArtistTagsToJson(_$_ArtistTags instance) =>
    <String, dynamic>{
      'tag': instance.tag.map((e) => e.toJson()).toList(),
    };

_$_ArtistTag _$$_ArtistTagFromJson(Map<String, dynamic> json) => _$_ArtistTag(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_ArtistTagToJson(_$_ArtistTag instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
