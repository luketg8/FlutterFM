// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similar_artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SimilarArtist _$$_SimilarArtistFromJson(Map<String, dynamic> json) =>
    _$_SimilarArtist(
      mbid: json['mbid'] as String?,
      name: json['name'] as String,
      url: json['url'] as String,
      streamable: ConverterUtils.parseBool(json['streamable'] as String),
      image: (json['image'] as List<dynamic>)
          .map((e) => LastFMImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SimilarArtistToJson(_$_SimilarArtist instance) =>
    <String, dynamic>{
      'mbid': instance.mbid,
      'name': instance.name,
      'url': instance.url,
      'streamable': instance.streamable,
      'image': instance.image.map((e) => e.toJson()).toList(),
    };
