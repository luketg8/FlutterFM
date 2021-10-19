// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searched_artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchedArtist _$$_SearchedArtistFromJson(Map<String, dynamic> json) =>
    _$_SearchedArtist(
      mbid: json['mbid'] as String,
      name: json['name'] as String,
      listeners: json['listeners'] as String,
      url: json['url'] as String,
      streamable: ConverterUtils.parseBool(json['streamable'] as String),
    );

Map<String, dynamic> _$$_SearchedArtistToJson(_$_SearchedArtist instance) =>
    <String, dynamic>{
      'mbid': instance.mbid,
      'name': instance.name,
      'listeners': instance.listeners,
      'url': instance.url,
      'streamable': instance.streamable,
    };
