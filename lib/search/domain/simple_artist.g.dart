// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SimpleArtist _$$_SimpleArtistFromJson(Map<String, dynamic> json) =>
    _$_SimpleArtist(
      mbid: json['mbid'] as String,
      name: json['name'] as String,
      listeners: json['listeners'] as String,
      url: json['url'] as String,
      streamable: ConverterUtils.parseBool(json['streamable'] as String),
      image: (json['image'] as List<dynamic>)
          .map((e) => LastFMImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SimpleArtistToJson(_$_SimpleArtist instance) =>
    <String, dynamic>{
      'mbid': instance.mbid,
      'name': instance.name,
      'listeners': instance.listeners,
      'url': instance.url,
      'streamable': instance.streamable,
      'image': instance.image.map((e) => e.toJson()).toList(),
    };
