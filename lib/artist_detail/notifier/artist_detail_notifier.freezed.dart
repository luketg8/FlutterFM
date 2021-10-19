// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'artist_detail_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArtistDetailStateTearOff {
  const _$ArtistDetailStateTearOff();

  _ArtistDetailState call(
      {required DetailedArtist details,
      required List<SimilarArtist> similarArtists}) {
    return _ArtistDetailState(
      details: details,
      similarArtists: similarArtists,
    );
  }
}

/// @nodoc
const $ArtistDetailState = _$ArtistDetailStateTearOff();

/// @nodoc
mixin _$ArtistDetailState {
  DetailedArtist get details => throw _privateConstructorUsedError;
  List<SimilarArtist> get similarArtists => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtistDetailStateCopyWith<ArtistDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistDetailStateCopyWith<$Res> {
  factory $ArtistDetailStateCopyWith(
          ArtistDetailState value, $Res Function(ArtistDetailState) then) =
      _$ArtistDetailStateCopyWithImpl<$Res>;
  $Res call({DetailedArtist details, List<SimilarArtist> similarArtists});

  $DetailedArtistCopyWith<$Res> get details;
}

/// @nodoc
class _$ArtistDetailStateCopyWithImpl<$Res>
    implements $ArtistDetailStateCopyWith<$Res> {
  _$ArtistDetailStateCopyWithImpl(this._value, this._then);

  final ArtistDetailState _value;
  // ignore: unused_field
  final $Res Function(ArtistDetailState) _then;

  @override
  $Res call({
    Object? details = freezed,
    Object? similarArtists = freezed,
  }) {
    return _then(_value.copyWith(
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as DetailedArtist,
      similarArtists: similarArtists == freezed
          ? _value.similarArtists
          : similarArtists // ignore: cast_nullable_to_non_nullable
              as List<SimilarArtist>,
    ));
  }

  @override
  $DetailedArtistCopyWith<$Res> get details {
    return $DetailedArtistCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc
abstract class _$ArtistDetailStateCopyWith<$Res>
    implements $ArtistDetailStateCopyWith<$Res> {
  factory _$ArtistDetailStateCopyWith(
          _ArtistDetailState value, $Res Function(_ArtistDetailState) then) =
      __$ArtistDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({DetailedArtist details, List<SimilarArtist> similarArtists});

  @override
  $DetailedArtistCopyWith<$Res> get details;
}

/// @nodoc
class __$ArtistDetailStateCopyWithImpl<$Res>
    extends _$ArtistDetailStateCopyWithImpl<$Res>
    implements _$ArtistDetailStateCopyWith<$Res> {
  __$ArtistDetailStateCopyWithImpl(
      _ArtistDetailState _value, $Res Function(_ArtistDetailState) _then)
      : super(_value, (v) => _then(v as _ArtistDetailState));

  @override
  _ArtistDetailState get _value => super._value as _ArtistDetailState;

  @override
  $Res call({
    Object? details = freezed,
    Object? similarArtists = freezed,
  }) {
    return _then(_ArtistDetailState(
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as DetailedArtist,
      similarArtists: similarArtists == freezed
          ? _value.similarArtists
          : similarArtists // ignore: cast_nullable_to_non_nullable
              as List<SimilarArtist>,
    ));
  }
}

/// @nodoc

class _$_ArtistDetailState implements _ArtistDetailState {
  _$_ArtistDetailState({required this.details, required this.similarArtists});

  @override
  final DetailedArtist details;
  @override
  final List<SimilarArtist> similarArtists;

  @override
  String toString() {
    return 'ArtistDetailState(details: $details, similarArtists: $similarArtists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArtistDetailState &&
            (identical(other.details, details) || other.details == details) &&
            const DeepCollectionEquality()
                .equals(other.similarArtists, similarArtists));
  }

  @override
  int get hashCode => Object.hash(runtimeType, details,
      const DeepCollectionEquality().hash(similarArtists));

  @JsonKey(ignore: true)
  @override
  _$ArtistDetailStateCopyWith<_ArtistDetailState> get copyWith =>
      __$ArtistDetailStateCopyWithImpl<_ArtistDetailState>(this, _$identity);
}

abstract class _ArtistDetailState implements ArtistDetailState {
  factory _ArtistDetailState(
      {required DetailedArtist details,
      required List<SimilarArtist> similarArtists}) = _$_ArtistDetailState;

  @override
  DetailedArtist get details;
  @override
  List<SimilarArtist> get similarArtists;
  @override
  @JsonKey(ignore: true)
  _$ArtistDetailStateCopyWith<_ArtistDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
