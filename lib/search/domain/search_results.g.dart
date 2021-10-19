// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResults _$$_SearchResultsFromJson(Map<String, dynamic> json) =>
    _$_SearchResults(
      totalResults:
          ConverterUtils.parseInt(json['opensearch:totalResults'] as String),
      startIndex:
          ConverterUtils.parseInt(json['opensearch:startIndex'] as String),
      itemsPerPage:
          ConverterUtils.parseInt(json['opensearch:itemsPerPage'] as String),
      artistmatches:
          ArtistResults.fromJson(json['artistmatches'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchResultsToJson(_$_SearchResults instance) =>
    <String, dynamic>{
      'opensearch:totalResults': instance.totalResults,
      'opensearch:startIndex': instance.startIndex,
      'opensearch:itemsPerPage': instance.itemsPerPage,
      'artistmatches': instance.artistmatches.toJson(),
    };

_$_ArtistResults _$$_ArtistResultsFromJson(Map<String, dynamic> json) =>
    _$_ArtistResults(
      artist: (json['artist'] as List<dynamic>)
          .map((e) => SearchedArtist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ArtistResultsToJson(_$_ArtistResults instance) =>
    <String, dynamic>{
      'artist': instance.artist.map((e) => e.toJson()).toList(),
    };
