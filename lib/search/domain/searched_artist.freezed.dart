// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'searched_artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchedArtist _$SearchedArtistFromJson(Map<String, dynamic> json) {
  return _SearchedArtist.fromJson(json);
}

/// @nodoc
class _$SearchedArtistTearOff {
  const _$SearchedArtistTearOff();

  _SearchedArtist call(
      {required String mbid,
      required String name,
      required String listeners,
      required String url,
      @JsonKey(fromJson: ConverterUtils.parseBool) required bool streamable,
      required List<LastFMImage> image}) {
    return _SearchedArtist(
      mbid: mbid,
      name: name,
      listeners: listeners,
      url: url,
      streamable: streamable,
      image: image,
    );
  }

  SearchedArtist fromJson(Map<String, Object?> json) {
    return SearchedArtist.fromJson(json);
  }
}

/// @nodoc
const $SearchedArtist = _$SearchedArtistTearOff();

/// @nodoc
mixin _$SearchedArtist {
  String get mbid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get listeners => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(fromJson: ConverterUtils.parseBool)
  bool get streamable => throw _privateConstructorUsedError;
  List<LastFMImage> get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchedArtistCopyWith<SearchedArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchedArtistCopyWith<$Res> {
  factory $SearchedArtistCopyWith(
          SearchedArtist value, $Res Function(SearchedArtist) then) =
      _$SearchedArtistCopyWithImpl<$Res>;
  $Res call(
      {String mbid,
      String name,
      String listeners,
      String url,
      @JsonKey(fromJson: ConverterUtils.parseBool) bool streamable,
      List<LastFMImage> image});
}

/// @nodoc
class _$SearchedArtistCopyWithImpl<$Res>
    implements $SearchedArtistCopyWith<$Res> {
  _$SearchedArtistCopyWithImpl(this._value, this._then);

  final SearchedArtist _value;
  // ignore: unused_field
  final $Res Function(SearchedArtist) _then;

  @override
  $Res call({
    Object? mbid = freezed,
    Object? name = freezed,
    Object? listeners = freezed,
    Object? url = freezed,
    Object? streamable = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      mbid: mbid == freezed
          ? _value.mbid
          : mbid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      listeners: listeners == freezed
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      streamable: streamable == freezed
          ? _value.streamable
          : streamable // ignore: cast_nullable_to_non_nullable
              as bool,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<LastFMImage>,
    ));
  }
}

/// @nodoc
abstract class _$SearchedArtistCopyWith<$Res>
    implements $SearchedArtistCopyWith<$Res> {
  factory _$SearchedArtistCopyWith(
          _SearchedArtist value, $Res Function(_SearchedArtist) then) =
      __$SearchedArtistCopyWithImpl<$Res>;
  @override
  $Res call(
      {String mbid,
      String name,
      String listeners,
      String url,
      @JsonKey(fromJson: ConverterUtils.parseBool) bool streamable,
      List<LastFMImage> image});
}

/// @nodoc
class __$SearchedArtistCopyWithImpl<$Res>
    extends _$SearchedArtistCopyWithImpl<$Res>
    implements _$SearchedArtistCopyWith<$Res> {
  __$SearchedArtistCopyWithImpl(
      _SearchedArtist _value, $Res Function(_SearchedArtist) _then)
      : super(_value, (v) => _then(v as _SearchedArtist));

  @override
  _SearchedArtist get _value => super._value as _SearchedArtist;

  @override
  $Res call({
    Object? mbid = freezed,
    Object? name = freezed,
    Object? listeners = freezed,
    Object? url = freezed,
    Object? streamable = freezed,
    Object? image = freezed,
  }) {
    return _then(_SearchedArtist(
      mbid: mbid == freezed
          ? _value.mbid
          : mbid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      listeners: listeners == freezed
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      streamable: streamable == freezed
          ? _value.streamable
          : streamable // ignore: cast_nullable_to_non_nullable
              as bool,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<LastFMImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchedArtist implements _SearchedArtist {
  _$_SearchedArtist(
      {required this.mbid,
      required this.name,
      required this.listeners,
      required this.url,
      @JsonKey(fromJson: ConverterUtils.parseBool) required this.streamable,
      required this.image});

  factory _$_SearchedArtist.fromJson(Map<String, dynamic> json) =>
      _$$_SearchedArtistFromJson(json);

  @override
  final String mbid;
  @override
  final String name;
  @override
  final String listeners;
  @override
  final String url;
  @override
  @JsonKey(fromJson: ConverterUtils.parseBool)
  final bool streamable;
  @override
  final List<LastFMImage> image;

  @override
  String toString() {
    return 'SearchedArtist(mbid: $mbid, name: $name, listeners: $listeners, url: $url, streamable: $streamable, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchedArtist &&
            (identical(other.mbid, mbid) || other.mbid == mbid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.listeners, listeners) ||
                other.listeners == listeners) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.streamable, streamable) ||
                other.streamable == streamable) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mbid, name, listeners, url,
      streamable, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$SearchedArtistCopyWith<_SearchedArtist> get copyWith =>
      __$SearchedArtistCopyWithImpl<_SearchedArtist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchedArtistToJson(this);
  }
}

abstract class _SearchedArtist implements SearchedArtist {
  factory _SearchedArtist(
      {required String mbid,
      required String name,
      required String listeners,
      required String url,
      @JsonKey(fromJson: ConverterUtils.parseBool) required bool streamable,
      required List<LastFMImage> image}) = _$_SearchedArtist;

  factory _SearchedArtist.fromJson(Map<String, dynamic> json) =
      _$_SearchedArtist.fromJson;

  @override
  String get mbid;
  @override
  String get name;
  @override
  String get listeners;
  @override
  String get url;
  @override
  @JsonKey(fromJson: ConverterUtils.parseBool)
  bool get streamable;
  @override
  List<LastFMImage> get image;
  @override
  @JsonKey(ignore: true)
  _$SearchedArtistCopyWith<_SearchedArtist> get copyWith =>
      throw _privateConstructorUsedError;
}
