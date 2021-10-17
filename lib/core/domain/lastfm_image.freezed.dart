// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lastfm_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LastFMImage _$LastFMImageFromJson(Map<String, dynamic> json) {
  return _LastFMImage.fromJson(json);
}

/// @nodoc
class _$LastFMImageTearOff {
  const _$LastFMImageTearOff();

  _LastFMImage call(
      {@JsonKey(name: '#text') required String text, required String size}) {
    return _LastFMImage(
      text: text,
      size: size,
    );
  }

  LastFMImage fromJson(Map<String, Object?> json) {
    return LastFMImage.fromJson(json);
  }
}

/// @nodoc
const $LastFMImage = _$LastFMImageTearOff();

/// @nodoc
mixin _$LastFMImage {
  @JsonKey(name: '#text')
  String get text => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LastFMImageCopyWith<LastFMImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastFMImageCopyWith<$Res> {
  factory $LastFMImageCopyWith(
          LastFMImage value, $Res Function(LastFMImage) then) =
      _$LastFMImageCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: '#text') String text, String size});
}

/// @nodoc
class _$LastFMImageCopyWithImpl<$Res> implements $LastFMImageCopyWith<$Res> {
  _$LastFMImageCopyWithImpl(this._value, this._then);

  final LastFMImage _value;
  // ignore: unused_field
  final $Res Function(LastFMImage) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LastFMImageCopyWith<$Res>
    implements $LastFMImageCopyWith<$Res> {
  factory _$LastFMImageCopyWith(
          _LastFMImage value, $Res Function(_LastFMImage) then) =
      __$LastFMImageCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '#text') String text, String size});
}

/// @nodoc
class __$LastFMImageCopyWithImpl<$Res> extends _$LastFMImageCopyWithImpl<$Res>
    implements _$LastFMImageCopyWith<$Res> {
  __$LastFMImageCopyWithImpl(
      _LastFMImage _value, $Res Function(_LastFMImage) _then)
      : super(_value, (v) => _then(v as _LastFMImage));

  @override
  _LastFMImage get _value => super._value as _LastFMImage;

  @override
  $Res call({
    Object? text = freezed,
    Object? size = freezed,
  }) {
    return _then(_LastFMImage(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LastFMImage implements _LastFMImage {
  _$_LastFMImage(
      {@JsonKey(name: '#text') required this.text, required this.size});

  factory _$_LastFMImage.fromJson(Map<String, dynamic> json) =>
      _$$_LastFMImageFromJson(json);

  @override
  @JsonKey(name: '#text')
  final String text;
  @override
  final String size;

  @override
  String toString() {
    return 'LastFMImage(text: $text, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LastFMImage &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, size);

  @JsonKey(ignore: true)
  @override
  _$LastFMImageCopyWith<_LastFMImage> get copyWith =>
      __$LastFMImageCopyWithImpl<_LastFMImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LastFMImageToJson(this);
  }
}

abstract class _LastFMImage implements LastFMImage {
  factory _LastFMImage(
      {@JsonKey(name: '#text') required String text,
      required String size}) = _$_LastFMImage;

  factory _LastFMImage.fromJson(Map<String, dynamic> json) =
      _$_LastFMImage.fromJson;

  @override
  @JsonKey(name: '#text')
  String get text;
  @override
  String get size;
  @override
  @JsonKey(ignore: true)
  _$LastFMImageCopyWith<_LastFMImage> get copyWith =>
      throw _privateConstructorUsedError;
}
