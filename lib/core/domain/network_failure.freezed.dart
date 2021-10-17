// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NetworkFailureTearOff {
  const _$NetworkFailureTearOff();

  _NoConnection noConnection() {
    return const _NoConnection();
  }

  _WithReason withMessage(String message) {
    return _WithReason(
      message,
    );
  }

  _Other other() {
    return const _Other();
  }
}

/// @nodoc
const $NetworkFailure = _$NetworkFailureTearOff();

/// @nodoc
mixin _$NetworkFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(String message) withMessage,
    required TResult Function() other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(String message)? withMessage,
    TResult Function()? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(String message)? withMessage,
    TResult Function()? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_WithReason value) withMessage,
    required TResult Function(_Other value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_WithReason value)? withMessage,
    TResult Function(_Other value)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_WithReason value)? withMessage,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

  final NetworkFailure _value;
  // ignore: unused_field
  final $Res Function(NetworkFailure) _then;
}

/// @nodoc
abstract class _$NoConnectionCopyWith<$Res> {
  factory _$NoConnectionCopyWith(
          _NoConnection value, $Res Function(_NoConnection) then) =
      __$NoConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoConnectionCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements _$NoConnectionCopyWith<$Res> {
  __$NoConnectionCopyWithImpl(
      _NoConnection _value, $Res Function(_NoConnection) _then)
      : super(_value, (v) => _then(v as _NoConnection));

  @override
  _NoConnection get _value => super._value as _NoConnection;
}

/// @nodoc

class _$_NoConnection implements _NoConnection {
  const _$_NoConnection();

  @override
  String toString() {
    return 'NetworkFailure.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(String message) withMessage,
    required TResult Function() other,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(String message)? withMessage,
    TResult Function()? other,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(String message)? withMessage,
    TResult Function()? other,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_WithReason value) withMessage,
    required TResult Function(_Other value) other,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_WithReason value)? withMessage,
    TResult Function(_Other value)? other,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_WithReason value)? withMessage,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection implements NetworkFailure {
  const factory _NoConnection() = _$_NoConnection;
}

/// @nodoc
abstract class _$WithReasonCopyWith<$Res> {
  factory _$WithReasonCopyWith(
          _WithReason value, $Res Function(_WithReason) then) =
      __$WithReasonCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$WithReasonCopyWithImpl<$Res> extends _$NetworkFailureCopyWithImpl<$Res>
    implements _$WithReasonCopyWith<$Res> {
  __$WithReasonCopyWithImpl(
      _WithReason _value, $Res Function(_WithReason) _then)
      : super(_value, (v) => _then(v as _WithReason));

  @override
  _WithReason get _value => super._value as _WithReason;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_WithReason(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WithReason implements _WithReason {
  const _$_WithReason(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkFailure.withMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithReason &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  _$WithReasonCopyWith<_WithReason> get copyWith =>
      __$WithReasonCopyWithImpl<_WithReason>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(String message) withMessage,
    required TResult Function() other,
  }) {
    return withMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(String message)? withMessage,
    TResult Function()? other,
  }) {
    return withMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(String message)? withMessage,
    TResult Function()? other,
    required TResult orElse(),
  }) {
    if (withMessage != null) {
      return withMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_WithReason value) withMessage,
    required TResult Function(_Other value) other,
  }) {
    return withMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_WithReason value)? withMessage,
    TResult Function(_Other value)? other,
  }) {
    return withMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_WithReason value)? withMessage,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (withMessage != null) {
      return withMessage(this);
    }
    return orElse();
  }
}

abstract class _WithReason implements NetworkFailure {
  const factory _WithReason(String message) = _$_WithReason;

  String get message;
  @JsonKey(ignore: true)
  _$WithReasonCopyWith<_WithReason> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OtherCopyWith<$Res> {
  factory _$OtherCopyWith(_Other value, $Res Function(_Other) then) =
      __$OtherCopyWithImpl<$Res>;
}

/// @nodoc
class __$OtherCopyWithImpl<$Res> extends _$NetworkFailureCopyWithImpl<$Res>
    implements _$OtherCopyWith<$Res> {
  __$OtherCopyWithImpl(_Other _value, $Res Function(_Other) _then)
      : super(_value, (v) => _then(v as _Other));

  @override
  _Other get _value => super._value as _Other;
}

/// @nodoc

class _$_Other implements _Other {
  const _$_Other();

  @override
  String toString() {
    return 'NetworkFailure.other()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Other);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(String message) withMessage,
    required TResult Function() other,
  }) {
    return other();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(String message)? withMessage,
    TResult Function()? other,
  }) {
    return other?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(String message)? withMessage,
    TResult Function()? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_WithReason value) withMessage,
    required TResult Function(_Other value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_WithReason value)? withMessage,
    TResult Function(_Other value)? other,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_WithReason value)? withMessage,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class _Other implements NetworkFailure {
  const factory _Other() = _$_Other;
}
