// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() tooManyRequests,
    required TResult Function() deviceNotSupported,
    required TResult Function() smsTimeout,
    required TResult Function() sessionExpired,
    required TResult Function() invalidVerificationCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? tooManyRequests,
    TResult? Function()? deviceNotSupported,
    TResult? Function()? smsTimeout,
    TResult? Function()? sessionExpired,
    TResult? Function()? invalidVerificationCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? smsTimeout,
    TResult Function()? sessionExpired,
    TResult Function()? invalidVerificationCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_DeviceNotSupported value) deviceNotSupported,
    required TResult Function(_SmsTimeout value) smsTimeout,
    required TResult Function(_SessionExpired value) sessionExpired,
    required TResult Function(_InvalidVerificationCode value)
        invalidVerificationCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(_SmsTimeout value)? smsTimeout,
    TResult? Function(_SessionExpired value)? sessionExpired,
    TResult? Function(_InvalidVerificationCode value)? invalidVerificationCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_SmsTimeout value)? smsTimeout,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_InvalidVerificationCode value)? invalidVerificationCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() tooManyRequests,
    required TResult Function() deviceNotSupported,
    required TResult Function() smsTimeout,
    required TResult Function() sessionExpired,
    required TResult Function() invalidVerificationCode,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? tooManyRequests,
    TResult? Function()? deviceNotSupported,
    TResult? Function()? smsTimeout,
    TResult? Function()? sessionExpired,
    TResult? Function()? invalidVerificationCode,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? smsTimeout,
    TResult Function()? sessionExpired,
    TResult Function()? invalidVerificationCode,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_DeviceNotSupported value) deviceNotSupported,
    required TResult Function(_SmsTimeout value) smsTimeout,
    required TResult Function(_SessionExpired value) sessionExpired,
    required TResult Function(_InvalidVerificationCode value)
        invalidVerificationCode,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(_SmsTimeout value)? smsTimeout,
    TResult? Function(_SessionExpired value)? sessionExpired,
    TResult? Function(_InvalidVerificationCode value)? invalidVerificationCode,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_SmsTimeout value)? smsTimeout,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_InvalidVerificationCode value)? invalidVerificationCode,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements AuthFailure {
  const factory _ServerError() = _$ServerErrorImpl;
}

/// @nodoc
abstract class _$$TooManyRequestsImplCopyWith<$Res> {
  factory _$$TooManyRequestsImplCopyWith(_$TooManyRequestsImpl value,
          $Res Function(_$TooManyRequestsImpl) then) =
      __$$TooManyRequestsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TooManyRequestsImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$TooManyRequestsImpl>
    implements _$$TooManyRequestsImplCopyWith<$Res> {
  __$$TooManyRequestsImplCopyWithImpl(
      _$TooManyRequestsImpl _value, $Res Function(_$TooManyRequestsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TooManyRequestsImpl implements _TooManyRequests {
  const _$TooManyRequestsImpl();

  @override
  String toString() {
    return 'AuthFailure.tooManyRequests()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TooManyRequestsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() tooManyRequests,
    required TResult Function() deviceNotSupported,
    required TResult Function() smsTimeout,
    required TResult Function() sessionExpired,
    required TResult Function() invalidVerificationCode,
  }) {
    return tooManyRequests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? tooManyRequests,
    TResult? Function()? deviceNotSupported,
    TResult? Function()? smsTimeout,
    TResult? Function()? sessionExpired,
    TResult? Function()? invalidVerificationCode,
  }) {
    return tooManyRequests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? smsTimeout,
    TResult Function()? sessionExpired,
    TResult Function()? invalidVerificationCode,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_DeviceNotSupported value) deviceNotSupported,
    required TResult Function(_SmsTimeout value) smsTimeout,
    required TResult Function(_SessionExpired value) sessionExpired,
    required TResult Function(_InvalidVerificationCode value)
        invalidVerificationCode,
  }) {
    return tooManyRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(_SmsTimeout value)? smsTimeout,
    TResult? Function(_SessionExpired value)? sessionExpired,
    TResult? Function(_InvalidVerificationCode value)? invalidVerificationCode,
  }) {
    return tooManyRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_SmsTimeout value)? smsTimeout,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_InvalidVerificationCode value)? invalidVerificationCode,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests(this);
    }
    return orElse();
  }
}

abstract class _TooManyRequests implements AuthFailure {
  const factory _TooManyRequests() = _$TooManyRequestsImpl;
}

/// @nodoc
abstract class _$$DeviceNotSupportedImplCopyWith<$Res> {
  factory _$$DeviceNotSupportedImplCopyWith(_$DeviceNotSupportedImpl value,
          $Res Function(_$DeviceNotSupportedImpl) then) =
      __$$DeviceNotSupportedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeviceNotSupportedImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$DeviceNotSupportedImpl>
    implements _$$DeviceNotSupportedImplCopyWith<$Res> {
  __$$DeviceNotSupportedImplCopyWithImpl(_$DeviceNotSupportedImpl _value,
      $Res Function(_$DeviceNotSupportedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeviceNotSupportedImpl implements _DeviceNotSupported {
  const _$DeviceNotSupportedImpl();

  @override
  String toString() {
    return 'AuthFailure.deviceNotSupported()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeviceNotSupportedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() tooManyRequests,
    required TResult Function() deviceNotSupported,
    required TResult Function() smsTimeout,
    required TResult Function() sessionExpired,
    required TResult Function() invalidVerificationCode,
  }) {
    return deviceNotSupported();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? tooManyRequests,
    TResult? Function()? deviceNotSupported,
    TResult? Function()? smsTimeout,
    TResult? Function()? sessionExpired,
    TResult? Function()? invalidVerificationCode,
  }) {
    return deviceNotSupported?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? smsTimeout,
    TResult Function()? sessionExpired,
    TResult Function()? invalidVerificationCode,
    required TResult orElse(),
  }) {
    if (deviceNotSupported != null) {
      return deviceNotSupported();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_DeviceNotSupported value) deviceNotSupported,
    required TResult Function(_SmsTimeout value) smsTimeout,
    required TResult Function(_SessionExpired value) sessionExpired,
    required TResult Function(_InvalidVerificationCode value)
        invalidVerificationCode,
  }) {
    return deviceNotSupported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(_SmsTimeout value)? smsTimeout,
    TResult? Function(_SessionExpired value)? sessionExpired,
    TResult? Function(_InvalidVerificationCode value)? invalidVerificationCode,
  }) {
    return deviceNotSupported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_SmsTimeout value)? smsTimeout,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_InvalidVerificationCode value)? invalidVerificationCode,
    required TResult orElse(),
  }) {
    if (deviceNotSupported != null) {
      return deviceNotSupported(this);
    }
    return orElse();
  }
}

abstract class _DeviceNotSupported implements AuthFailure {
  const factory _DeviceNotSupported() = _$DeviceNotSupportedImpl;
}

/// @nodoc
abstract class _$$SmsTimeoutImplCopyWith<$Res> {
  factory _$$SmsTimeoutImplCopyWith(
          _$SmsTimeoutImpl value, $Res Function(_$SmsTimeoutImpl) then) =
      __$$SmsTimeoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SmsTimeoutImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$SmsTimeoutImpl>
    implements _$$SmsTimeoutImplCopyWith<$Res> {
  __$$SmsTimeoutImplCopyWithImpl(
      _$SmsTimeoutImpl _value, $Res Function(_$SmsTimeoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SmsTimeoutImpl implements _SmsTimeout {
  const _$SmsTimeoutImpl();

  @override
  String toString() {
    return 'AuthFailure.smsTimeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SmsTimeoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() tooManyRequests,
    required TResult Function() deviceNotSupported,
    required TResult Function() smsTimeout,
    required TResult Function() sessionExpired,
    required TResult Function() invalidVerificationCode,
  }) {
    return smsTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? tooManyRequests,
    TResult? Function()? deviceNotSupported,
    TResult? Function()? smsTimeout,
    TResult? Function()? sessionExpired,
    TResult? Function()? invalidVerificationCode,
  }) {
    return smsTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? smsTimeout,
    TResult Function()? sessionExpired,
    TResult Function()? invalidVerificationCode,
    required TResult orElse(),
  }) {
    if (smsTimeout != null) {
      return smsTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_DeviceNotSupported value) deviceNotSupported,
    required TResult Function(_SmsTimeout value) smsTimeout,
    required TResult Function(_SessionExpired value) sessionExpired,
    required TResult Function(_InvalidVerificationCode value)
        invalidVerificationCode,
  }) {
    return smsTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(_SmsTimeout value)? smsTimeout,
    TResult? Function(_SessionExpired value)? sessionExpired,
    TResult? Function(_InvalidVerificationCode value)? invalidVerificationCode,
  }) {
    return smsTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_SmsTimeout value)? smsTimeout,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_InvalidVerificationCode value)? invalidVerificationCode,
    required TResult orElse(),
  }) {
    if (smsTimeout != null) {
      return smsTimeout(this);
    }
    return orElse();
  }
}

abstract class _SmsTimeout implements AuthFailure {
  const factory _SmsTimeout() = _$SmsTimeoutImpl;
}

/// @nodoc
abstract class _$$SessionExpiredImplCopyWith<$Res> {
  factory _$$SessionExpiredImplCopyWith(_$SessionExpiredImpl value,
          $Res Function(_$SessionExpiredImpl) then) =
      __$$SessionExpiredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionExpiredImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$SessionExpiredImpl>
    implements _$$SessionExpiredImplCopyWith<$Res> {
  __$$SessionExpiredImplCopyWithImpl(
      _$SessionExpiredImpl _value, $Res Function(_$SessionExpiredImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SessionExpiredImpl implements _SessionExpired {
  const _$SessionExpiredImpl();

  @override
  String toString() {
    return 'AuthFailure.sessionExpired()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SessionExpiredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() tooManyRequests,
    required TResult Function() deviceNotSupported,
    required TResult Function() smsTimeout,
    required TResult Function() sessionExpired,
    required TResult Function() invalidVerificationCode,
  }) {
    return sessionExpired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? tooManyRequests,
    TResult? Function()? deviceNotSupported,
    TResult? Function()? smsTimeout,
    TResult? Function()? sessionExpired,
    TResult? Function()? invalidVerificationCode,
  }) {
    return sessionExpired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? smsTimeout,
    TResult Function()? sessionExpired,
    TResult Function()? invalidVerificationCode,
    required TResult orElse(),
  }) {
    if (sessionExpired != null) {
      return sessionExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_DeviceNotSupported value) deviceNotSupported,
    required TResult Function(_SmsTimeout value) smsTimeout,
    required TResult Function(_SessionExpired value) sessionExpired,
    required TResult Function(_InvalidVerificationCode value)
        invalidVerificationCode,
  }) {
    return sessionExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(_SmsTimeout value)? smsTimeout,
    TResult? Function(_SessionExpired value)? sessionExpired,
    TResult? Function(_InvalidVerificationCode value)? invalidVerificationCode,
  }) {
    return sessionExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_SmsTimeout value)? smsTimeout,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_InvalidVerificationCode value)? invalidVerificationCode,
    required TResult orElse(),
  }) {
    if (sessionExpired != null) {
      return sessionExpired(this);
    }
    return orElse();
  }
}

abstract class _SessionExpired implements AuthFailure {
  const factory _SessionExpired() = _$SessionExpiredImpl;
}

/// @nodoc
abstract class _$$InvalidVerificationCodeImplCopyWith<$Res> {
  factory _$$InvalidVerificationCodeImplCopyWith(
          _$InvalidVerificationCodeImpl value,
          $Res Function(_$InvalidVerificationCodeImpl) then) =
      __$$InvalidVerificationCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidVerificationCodeImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$InvalidVerificationCodeImpl>
    implements _$$InvalidVerificationCodeImplCopyWith<$Res> {
  __$$InvalidVerificationCodeImplCopyWithImpl(
      _$InvalidVerificationCodeImpl _value,
      $Res Function(_$InvalidVerificationCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InvalidVerificationCodeImpl implements _InvalidVerificationCode {
  const _$InvalidVerificationCodeImpl();

  @override
  String toString() {
    return 'AuthFailure.invalidVerificationCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidVerificationCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() tooManyRequests,
    required TResult Function() deviceNotSupported,
    required TResult Function() smsTimeout,
    required TResult Function() sessionExpired,
    required TResult Function() invalidVerificationCode,
  }) {
    return invalidVerificationCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? tooManyRequests,
    TResult? Function()? deviceNotSupported,
    TResult? Function()? smsTimeout,
    TResult? Function()? sessionExpired,
    TResult? Function()? invalidVerificationCode,
  }) {
    return invalidVerificationCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? smsTimeout,
    TResult Function()? sessionExpired,
    TResult Function()? invalidVerificationCode,
    required TResult orElse(),
  }) {
    if (invalidVerificationCode != null) {
      return invalidVerificationCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_TooManyRequests value) tooManyRequests,
    required TResult Function(_DeviceNotSupported value) deviceNotSupported,
    required TResult Function(_SmsTimeout value) smsTimeout,
    required TResult Function(_SessionExpired value) sessionExpired,
    required TResult Function(_InvalidVerificationCode value)
        invalidVerificationCode,
  }) {
    return invalidVerificationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_TooManyRequests value)? tooManyRequests,
    TResult? Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(_SmsTimeout value)? smsTimeout,
    TResult? Function(_SessionExpired value)? sessionExpired,
    TResult? Function(_InvalidVerificationCode value)? invalidVerificationCode,
  }) {
    return invalidVerificationCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_SmsTimeout value)? smsTimeout,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_InvalidVerificationCode value)? invalidVerificationCode,
    required TResult orElse(),
  }) {
    if (invalidVerificationCode != null) {
      return invalidVerificationCode(this);
    }
    return orElse();
  }
}

abstract class _InvalidVerificationCode implements AuthFailure {
  const factory _InvalidVerificationCode() = _$InvalidVerificationCodeImpl;
}
