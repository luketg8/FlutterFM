// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'simple_artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SimpleArtist _$SimpleArtistFromJson(Map<String, dynamic> json) {
  return _SimpleArtist.fromJson(json);
}

/// @nodoc
class _$SimpleArtistTearOff {
  const _$SimpleArtistTearOff();

  _SimpleArtist call(
      {required String mbid,
      required String listeners,
      required String url,
      @JsonKey(fromJson: ConverterUtils.parseBool) required bool streamable,
      required List<LastFMImage> images}) {
    return _SimpleArtist(
      mbid: mbid,
      listeners: listeners,
      url: url,
      streamable: streamable,
      images: images,
    );
  }

  SimpleArtist fromJson(Map<String, Object?> json) {
    return SimpleArtist.fromJson(json);
  }
}

/// @nodoc
const $SimpleArtist = _$SimpleArtistTearOff();

/// @nodoc
mixin _$SimpleArtist {
  String get mbid => throw _privateConstructorUsedError;
  String get listeners => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(fromJson: ConverterUtils.parseBool)
  bool get streamable => throw _privateConstructorUsedError;
  List<LastFMImage> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimpleArtistCopyWith<SimpleArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleArtistCopyWith<$Res> {
  factory $SimpleArtistCopyWith(
          SimpleArtist value, $Res Function(SimpleArtist) then) =
      _$SimpleArtistCopyWithImpl<$Res>;
  $Res call(
      {String mbid,
      String listeners,
      String url,
      @JsonKey(fromJson: ConverterUtils.parseBool) bool streamable,
      List<LastFMImage> images});
}

/// @nodoc
class _$SimpleArtistCopyWithImpl<$Res> implements $SimpleArtistCopyWith<$Res> {
  _$SimpleArtistCopyWithImpl(this._value, this._then);

  final SimpleArtist _value;
  // ignore: unused_field
  final $Res Function(SimpleArtist) _then;

  @override
  $Res call({
    Object? mbid = freezed,
    Object? listeners = freezed,
    Object? url = freezed,
    Object? streamable = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      mbid: mbid == freezed
          ? _value.mbid
          : mbid // ignore: cast_nullable_to_non_nullable
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
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<LastFMImage>,
    ));
  }
}

/// @nodoc
abstract class _$SimpleArtistCopyWith<$Res>
    implements $SimpleArtistCopyWith<$Res> {
  factory _$SimpleArtistCopyWith(
          _SimpleArtist value, $Res Function(_SimpleArtist) then) =
      __$SimpleArtistCopyWithImpl<$Res>;
  @override
  $Res call(
      {String mbid,
      String listeners,
      String url,
      @JsonKey(fromJson: ConverterUtils.parseBool) bool streamable,
      List<LastFMImage> images});
}

/// @nodoc
class __$SimpleArtistCopyWithImpl<$Res> extends _$SimpleArtistCopyWithImpl<$Res>
    implements _$SimpleArtistCopyWith<$Res> {
  __$SimpleArtistCopyWithImpl(
      _SimpleArtist _value, $Res Function(_SimpleArtist) _then)
      : super(_value, (v) => _then(v as _SimpleArtist));

  @override
  _SimpleArtist get _value => super._value as _SimpleArtist;

  @override
  $Res call({
    Object? mbid = freezed,
    Object? listeners = freezed,
    Object? url = freezed,
    Object? streamable = freezed,
    Object? images = freezed,
  }) {
    return _then(_SimpleArtist(
      mbid: mbid == freezed
          ? _value.mbid
          : mbid // ignore: cast_nullable_to_non_nullable
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
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<LastFMImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SimpleArtist implements _SimpleArtist {
  _$_SimpleArtist(
      {required this.mbid,
      required this.listeners,
      required this.url,
      @JsonKey(fromJson: ConverterUtils.parseBool) required this.streamable,
      required this.images});

  factory _$_SimpleArtist.fromJson(Map<String, dynamic> json) =>
      _$$_SimpleArtistFromJson(json);

  @override
  final String mbid;
  @override
  final String listeners;
  @override
  final String url;
  @override
  @JsonKey(fromJson: ConverterUtils.parseBool)
  final bool streamable;
  @override
  final List<LastFMImage> images;

  @override
  String toString() {
    return 'SimpleArtist(mbid: $mbid, listeners: $listeners, url: $url, streamable: $streamable, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SimpleArtist &&
            (identical(other.mbid, mbid) || other.mbid == mbid) &&
            (identical(other.listeners, listeners) ||
                other.listeners == listeners) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.streamable, streamable) ||
                other.streamable == streamable) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mbid, listeners, url, streamable,
      const DeepCollectionEquality().hash(images));

  @JsonKey(ignore: true)
  @override
  _$SimpleArtistCopyWith<_SimpleArtist> get copyWith =>
      __$SimpleArtistCopyWithImpl<_SimpleArtist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SimpleArtistToJson(this);
  }
}

abstract class _SimpleArtist implements SimpleArtist {
  factory _SimpleArtist(
      {required String mbid,
      required String listeners,
      required String url,
      @JsonKey(fromJson: ConverterUtils.parseBool) required bool streamable,
      required List<LastFMImage> images}) = _$_SimpleArtist;

  factory _SimpleArtist.fromJson(Map<String, dynamic> json) =
      _$_SimpleArtist.fromJson;

  @override
  String get mbid;
  @override
  String get listeners;
  @override
  String get url;
  @override
  @JsonKey(fromJson: ConverterUtils.parseBool)
  bool get streamable;
  @override
  List<LastFMImage> get images;
  @override
  @JsonKey(ignore: true)
  _$SimpleArtistCopyWith<_SimpleArtist> get copyWith =>
      throw _privateConstructorUsedError;
}
