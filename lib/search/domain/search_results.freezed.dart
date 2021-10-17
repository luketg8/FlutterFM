// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResults _$SearchResultsFromJson(Map<String, dynamic> json) {
  return _SearchResults.fromJson(json);
}

/// @nodoc
class _$SearchResultsTearOff {
  const _$SearchResultsTearOff();

  _SearchResults call(
      {@JsonKey(name: 'opensearch:totalResults', fromJson: ConverterUtils.parseInt)
          required int totalResults,
      @JsonKey(name: 'opensearch:startIndex', fromJson: ConverterUtils.parseInt)
          required int startIndex,
      @JsonKey(name: 'opensearch:itemsPerPage', fromJson: ConverterUtils.parseInt)
          required int itemsPerPage,
      required ArtistResults artistmatches}) {
    return _SearchResults(
      totalResults: totalResults,
      startIndex: startIndex,
      itemsPerPage: itemsPerPage,
      artistmatches: artistmatches,
    );
  }

  SearchResults fromJson(Map<String, Object?> json) {
    return SearchResults.fromJson(json);
  }
}

/// @nodoc
const $SearchResults = _$SearchResultsTearOff();

/// @nodoc
mixin _$SearchResults {
  @JsonKey(name: 'opensearch:totalResults', fromJson: ConverterUtils.parseInt)
  int get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'opensearch:startIndex', fromJson: ConverterUtils.parseInt)
  int get startIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'opensearch:itemsPerPage', fromJson: ConverterUtils.parseInt)
  int get itemsPerPage => throw _privateConstructorUsedError;
  ArtistResults get artistmatches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultsCopyWith<SearchResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultsCopyWith<$Res> {
  factory $SearchResultsCopyWith(
          SearchResults value, $Res Function(SearchResults) then) =
      _$SearchResultsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'opensearch:totalResults', fromJson: ConverterUtils.parseInt)
          int totalResults,
      @JsonKey(name: 'opensearch:startIndex', fromJson: ConverterUtils.parseInt)
          int startIndex,
      @JsonKey(name: 'opensearch:itemsPerPage', fromJson: ConverterUtils.parseInt)
          int itemsPerPage,
      ArtistResults artistmatches});

  $ArtistResultsCopyWith<$Res> get artistmatches;
}

/// @nodoc
class _$SearchResultsCopyWithImpl<$Res>
    implements $SearchResultsCopyWith<$Res> {
  _$SearchResultsCopyWithImpl(this._value, this._then);

  final SearchResults _value;
  // ignore: unused_field
  final $Res Function(SearchResults) _then;

  @override
  $Res call({
    Object? totalResults = freezed,
    Object? startIndex = freezed,
    Object? itemsPerPage = freezed,
    Object? artistmatches = freezed,
  }) {
    return _then(_value.copyWith(
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      startIndex: startIndex == freezed
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int,
      itemsPerPage: itemsPerPage == freezed
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      artistmatches: artistmatches == freezed
          ? _value.artistmatches
          : artistmatches // ignore: cast_nullable_to_non_nullable
              as ArtistResults,
    ));
  }

  @override
  $ArtistResultsCopyWith<$Res> get artistmatches {
    return $ArtistResultsCopyWith<$Res>(_value.artistmatches, (value) {
      return _then(_value.copyWith(artistmatches: value));
    });
  }
}

/// @nodoc
abstract class _$SearchResultsCopyWith<$Res>
    implements $SearchResultsCopyWith<$Res> {
  factory _$SearchResultsCopyWith(
          _SearchResults value, $Res Function(_SearchResults) then) =
      __$SearchResultsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'opensearch:totalResults', fromJson: ConverterUtils.parseInt)
          int totalResults,
      @JsonKey(name: 'opensearch:startIndex', fromJson: ConverterUtils.parseInt)
          int startIndex,
      @JsonKey(name: 'opensearch:itemsPerPage', fromJson: ConverterUtils.parseInt)
          int itemsPerPage,
      ArtistResults artistmatches});

  @override
  $ArtistResultsCopyWith<$Res> get artistmatches;
}

/// @nodoc
class __$SearchResultsCopyWithImpl<$Res>
    extends _$SearchResultsCopyWithImpl<$Res>
    implements _$SearchResultsCopyWith<$Res> {
  __$SearchResultsCopyWithImpl(
      _SearchResults _value, $Res Function(_SearchResults) _then)
      : super(_value, (v) => _then(v as _SearchResults));

  @override
  _SearchResults get _value => super._value as _SearchResults;

  @override
  $Res call({
    Object? totalResults = freezed,
    Object? startIndex = freezed,
    Object? itemsPerPage = freezed,
    Object? artistmatches = freezed,
  }) {
    return _then(_SearchResults(
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      startIndex: startIndex == freezed
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int,
      itemsPerPage: itemsPerPage == freezed
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      artistmatches: artistmatches == freezed
          ? _value.artistmatches
          : artistmatches // ignore: cast_nullable_to_non_nullable
              as ArtistResults,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResults implements _SearchResults {
  _$_SearchResults(
      {@JsonKey(name: 'opensearch:totalResults', fromJson: ConverterUtils.parseInt)
          required this.totalResults,
      @JsonKey(name: 'opensearch:startIndex', fromJson: ConverterUtils.parseInt)
          required this.startIndex,
      @JsonKey(name: 'opensearch:itemsPerPage', fromJson: ConverterUtils.parseInt)
          required this.itemsPerPage,
      required this.artistmatches});

  factory _$_SearchResults.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResultsFromJson(json);

  @override
  @JsonKey(name: 'opensearch:totalResults', fromJson: ConverterUtils.parseInt)
  final int totalResults;
  @override
  @JsonKey(name: 'opensearch:startIndex', fromJson: ConverterUtils.parseInt)
  final int startIndex;
  @override
  @JsonKey(name: 'opensearch:itemsPerPage', fromJson: ConverterUtils.parseInt)
  final int itemsPerPage;
  @override
  final ArtistResults artistmatches;

  @override
  String toString() {
    return 'SearchResults(totalResults: $totalResults, startIndex: $startIndex, itemsPerPage: $itemsPerPage, artistmatches: $artistmatches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchResults &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.startIndex, startIndex) ||
                other.startIndex == startIndex) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage) &&
            (identical(other.artistmatches, artistmatches) ||
                other.artistmatches == artistmatches));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, totalResults, startIndex, itemsPerPage, artistmatches);

  @JsonKey(ignore: true)
  @override
  _$SearchResultsCopyWith<_SearchResults> get copyWith =>
      __$SearchResultsCopyWithImpl<_SearchResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResultsToJson(this);
  }
}

abstract class _SearchResults implements SearchResults {
  factory _SearchResults(
      {@JsonKey(name: 'opensearch:totalResults', fromJson: ConverterUtils.parseInt)
          required int totalResults,
      @JsonKey(name: 'opensearch:startIndex', fromJson: ConverterUtils.parseInt)
          required int startIndex,
      @JsonKey(name: 'opensearch:itemsPerPage', fromJson: ConverterUtils.parseInt)
          required int itemsPerPage,
      required ArtistResults artistmatches}) = _$_SearchResults;

  factory _SearchResults.fromJson(Map<String, dynamic> json) =
      _$_SearchResults.fromJson;

  @override
  @JsonKey(name: 'opensearch:totalResults', fromJson: ConverterUtils.parseInt)
  int get totalResults;
  @override
  @JsonKey(name: 'opensearch:startIndex', fromJson: ConverterUtils.parseInt)
  int get startIndex;
  @override
  @JsonKey(name: 'opensearch:itemsPerPage', fromJson: ConverterUtils.parseInt)
  int get itemsPerPage;
  @override
  ArtistResults get artistmatches;
  @override
  @JsonKey(ignore: true)
  _$SearchResultsCopyWith<_SearchResults> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistResults _$ArtistResultsFromJson(Map<String, dynamic> json) {
  return _ArtistResults.fromJson(json);
}

/// @nodoc
class _$ArtistResultsTearOff {
  const _$ArtistResultsTearOff();

  _ArtistResults call({required List<SimpleArtist> artist}) {
    return _ArtistResults(
      artist: artist,
    );
  }

  ArtistResults fromJson(Map<String, Object?> json) {
    return ArtistResults.fromJson(json);
  }
}

/// @nodoc
const $ArtistResults = _$ArtistResultsTearOff();

/// @nodoc
mixin _$ArtistResults {
  List<SimpleArtist> get artist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistResultsCopyWith<ArtistResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistResultsCopyWith<$Res> {
  factory $ArtistResultsCopyWith(
          ArtistResults value, $Res Function(ArtistResults) then) =
      _$ArtistResultsCopyWithImpl<$Res>;
  $Res call({List<SimpleArtist> artist});
}

/// @nodoc
class _$ArtistResultsCopyWithImpl<$Res>
    implements $ArtistResultsCopyWith<$Res> {
  _$ArtistResultsCopyWithImpl(this._value, this._then);

  final ArtistResults _value;
  // ignore: unused_field
  final $Res Function(ArtistResults) _then;

  @override
  $Res call({
    Object? artist = freezed,
  }) {
    return _then(_value.copyWith(
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<SimpleArtist>,
    ));
  }
}

/// @nodoc
abstract class _$ArtistResultsCopyWith<$Res>
    implements $ArtistResultsCopyWith<$Res> {
  factory _$ArtistResultsCopyWith(
          _ArtistResults value, $Res Function(_ArtistResults) then) =
      __$ArtistResultsCopyWithImpl<$Res>;
  @override
  $Res call({List<SimpleArtist> artist});
}

/// @nodoc
class __$ArtistResultsCopyWithImpl<$Res>
    extends _$ArtistResultsCopyWithImpl<$Res>
    implements _$ArtistResultsCopyWith<$Res> {
  __$ArtistResultsCopyWithImpl(
      _ArtistResults _value, $Res Function(_ArtistResults) _then)
      : super(_value, (v) => _then(v as _ArtistResults));

  @override
  _ArtistResults get _value => super._value as _ArtistResults;

  @override
  $Res call({
    Object? artist = freezed,
  }) {
    return _then(_ArtistResults(
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<SimpleArtist>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArtistResults implements _ArtistResults {
  _$_ArtistResults({required this.artist});

  factory _$_ArtistResults.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistResultsFromJson(json);

  @override
  final List<SimpleArtist> artist;

  @override
  String toString() {
    return 'ArtistResults(artist: $artist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArtistResults &&
            const DeepCollectionEquality().equals(other.artist, artist));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(artist));

  @JsonKey(ignore: true)
  @override
  _$ArtistResultsCopyWith<_ArtistResults> get copyWith =>
      __$ArtistResultsCopyWithImpl<_ArtistResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistResultsToJson(this);
  }
}

abstract class _ArtistResults implements ArtistResults {
  factory _ArtistResults({required List<SimpleArtist> artist}) =
      _$_ArtistResults;

  factory _ArtistResults.fromJson(Map<String, dynamic> json) =
      _$_ArtistResults.fromJson;

  @override
  List<SimpleArtist> get artist;
  @override
  @JsonKey(ignore: true)
  _$ArtistResultsCopyWith<_ArtistResults> get copyWith =>
      throw _privateConstructorUsedError;
}
