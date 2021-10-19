// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'similar_artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SimilarArtist _$SimilarArtistFromJson(Map<String, dynamic> json) {
  return _SimilarArtist.fromJson(json);
}

/// @nodoc
class _$SimilarArtistTearOff {
  const _$SimilarArtistTearOff();

  _SimilarArtist call(
      {required String? mbid,
      required String name,
      required String url,
      @JsonKey(fromJson: ConverterUtils.parseBool) required bool streamable}) {
    return _SimilarArtist(
      mbid: mbid,
      name: name,
      url: url,
      streamable: streamable,
    );
  }

  SimilarArtist fromJson(Map<String, Object?> json) {
    return SimilarArtist.fromJson(json);
  }
}

/// @nodoc
const $SimilarArtist = _$SimilarArtistTearOff();

/// @nodoc
mixin _$SimilarArtist {
  String? get mbid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(fromJson: ConverterUtils.parseBool)
  bool get streamable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimilarArtistCopyWith<SimilarArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimilarArtistCopyWith<$Res> {
  factory $SimilarArtistCopyWith(
          SimilarArtist value, $Res Function(SimilarArtist) then) =
      _$SimilarArtistCopyWithImpl<$Res>;
  $Res call(
      {String? mbid,
      String name,
      String url,
      @JsonKey(fromJson: ConverterUtils.parseBool) bool streamable});
}

/// @nodoc
class _$SimilarArtistCopyWithImpl<$Res>
    implements $SimilarArtistCopyWith<$Res> {
  _$SimilarArtistCopyWithImpl(this._value, this._then);

  final SimilarArtist _value;
  // ignore: unused_field
  final $Res Function(SimilarArtist) _then;

  @override
  $Res call({
    Object? mbid = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? streamable = freezed,
  }) {
    return _then(_value.copyWith(
      mbid: mbid == freezed
          ? _value.mbid
          : mbid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      streamable: streamable == freezed
          ? _value.streamable
          : streamable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SimilarArtistCopyWith<$Res>
    implements $SimilarArtistCopyWith<$Res> {
  factory _$SimilarArtistCopyWith(
          _SimilarArtist value, $Res Function(_SimilarArtist) then) =
      __$SimilarArtistCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? mbid,
      String name,
      String url,
      @JsonKey(fromJson: ConverterUtils.parseBool) bool streamable});
}

/// @nodoc
class __$SimilarArtistCopyWithImpl<$Res>
    extends _$SimilarArtistCopyWithImpl<$Res>
    implements _$SimilarArtistCopyWith<$Res> {
  __$SimilarArtistCopyWithImpl(
      _SimilarArtist _value, $Res Function(_SimilarArtist) _then)
      : super(_value, (v) => _then(v as _SimilarArtist));

  @override
  _SimilarArtist get _value => super._value as _SimilarArtist;

  @override
  $Res call({
    Object? mbid = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? streamable = freezed,
  }) {
    return _then(_SimilarArtist(
      mbid: mbid == freezed
          ? _value.mbid
          : mbid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      streamable: streamable == freezed
          ? _value.streamable
          : streamable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SimilarArtist implements _SimilarArtist {
  _$_SimilarArtist(
      {required this.mbid,
      required this.name,
      required this.url,
      @JsonKey(fromJson: ConverterUtils.parseBool) required this.streamable});

  factory _$_SimilarArtist.fromJson(Map<String, dynamic> json) =>
      _$$_SimilarArtistFromJson(json);

  @override
  final String? mbid;
  @override
  final String name;
  @override
  final String url;
  @override
  @JsonKey(fromJson: ConverterUtils.parseBool)
  final bool streamable;

  @override
  String toString() {
    return 'SimilarArtist(mbid: $mbid, name: $name, url: $url, streamable: $streamable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SimilarArtist &&
            (identical(other.mbid, mbid) || other.mbid == mbid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.streamable, streamable) ||
                other.streamable == streamable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mbid, name, url, streamable);

  @JsonKey(ignore: true)
  @override
  _$SimilarArtistCopyWith<_SimilarArtist> get copyWith =>
      __$SimilarArtistCopyWithImpl<_SimilarArtist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SimilarArtistToJson(this);
  }
}

abstract class _SimilarArtist implements SimilarArtist {
  factory _SimilarArtist(
      {required String? mbid,
      required String name,
      required String url,
      @JsonKey(fromJson: ConverterUtils.parseBool)
          required bool streamable}) = _$_SimilarArtist;

  factory _SimilarArtist.fromJson(Map<String, dynamic> json) =
      _$_SimilarArtist.fromJson;

  @override
  String? get mbid;
  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(fromJson: ConverterUtils.parseBool)
  bool get streamable;
  @override
  @JsonKey(ignore: true)
  _$SimilarArtistCopyWith<_SimilarArtist> get copyWith =>
      throw _privateConstructorUsedError;
}
