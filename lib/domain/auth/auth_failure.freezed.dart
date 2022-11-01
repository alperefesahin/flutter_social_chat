// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult Function()? serverError,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? smsTimeout,
    TResult Function()? sessionExpired,
    TResult Function()? invalidVerificationCode,
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
    TResult Function(_ServerError value)? serverError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_SmsTimeout value)? smsTimeout,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_InvalidVerificationCode value)? invalidVerificationCode,
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
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, (v) => _then(v as _$_ServerError));

  @override
  _$_ServerError get _value => super._value as _$_ServerError;
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerError);
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
    TResult Function()? serverError,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? smsTimeout,
    TResult Function()? sessionExpired,
    TResult Function()? invalidVerificationCode,
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
    TResult Function(_ServerError value)? serverError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_SmsTimeout value)? smsTimeout,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_InvalidVerificationCode value)? invalidVerificationCode,
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
  const factory _ServerError() = _$_ServerError;
}

/// @nodoc
abstract class _$$_TooManyRequestsCopyWith<$Res> {
  factory _$$_TooManyRequestsCopyWith(
          _$_TooManyRequests value, $Res Function(_$_TooManyRequests) then) =
      __$$_TooManyRequestsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TooManyRequestsCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_TooManyRequestsCopyWith<$Res> {
  __$$_TooManyRequestsCopyWithImpl(
      _$_TooManyRequests _value, $Res Function(_$_TooManyRequests) _then)
      : super(_value, (v) => _then(v as _$_TooManyRequests));

  @override
  _$_TooManyRequests get _value => super._value as _$_TooManyRequests;
}

/// @nodoc

class _$_TooManyRequests implements _TooManyRequests {
  const _$_TooManyRequests();

  @override
  String toString() {
    return 'AuthFailure.tooManyRequests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TooManyRequests);
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
    TResult Function()? serverError,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? smsTimeout,
    TResult Function()? sessionExpired,
    TResult Function()? invalidVerificationCode,
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
    TResult Function(_ServerError value)? serverError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_SmsTimeout value)? smsTimeout,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_InvalidVerificationCode value)? invalidVerificationCode,
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
  const factory _TooManyRequests() = _$_TooManyRequests;
}

/// @nodoc
abstract class _$$_DeviceNotSupportedCopyWith<$Res> {
  factory _$$_DeviceNotSupportedCopyWith(_$_DeviceNotSupported value,
          $Res Function(_$_DeviceNotSupported) then) =
      __$$_DeviceNotSupportedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeviceNotSupportedCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_DeviceNotSupportedCopyWith<$Res> {
  __$$_DeviceNotSupportedCopyWithImpl(
      _$_DeviceNotSupported _value, $Res Function(_$_DeviceNotSupported) _then)
      : super(_value, (v) => _then(v as _$_DeviceNotSupported));

  @override
  _$_DeviceNotSupported get _value => super._value as _$_DeviceNotSupported;
}

/// @nodoc

class _$_DeviceNotSupported implements _DeviceNotSupported {
  const _$_DeviceNotSupported();

  @override
  String toString() {
    return 'AuthFailure.deviceNotSupported()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeviceNotSupported);
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
    TResult Function()? serverError,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? smsTimeout,
    TResult Function()? sessionExpired,
    TResult Function()? invalidVerificationCode,
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
    TResult Function(_ServerError value)? serverError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_SmsTimeout value)? smsTimeout,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_InvalidVerificationCode value)? invalidVerificationCode,
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
  const factory _DeviceNotSupported() = _$_DeviceNotSupported;
}

/// @nodoc
abstract class _$$_SmsTimeoutCopyWith<$Res> {
  factory _$$_SmsTimeoutCopyWith(
          _$_SmsTimeout value, $Res Function(_$_SmsTimeout) then) =
      __$$_SmsTimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SmsTimeoutCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_SmsTimeoutCopyWith<$Res> {
  __$$_SmsTimeoutCopyWithImpl(
      _$_SmsTimeout _value, $Res Function(_$_SmsTimeout) _then)
      : super(_value, (v) => _then(v as _$_SmsTimeout));

  @override
  _$_SmsTimeout get _value => super._value as _$_SmsTimeout;
}

/// @nodoc

class _$_SmsTimeout implements _SmsTimeout {
  const _$_SmsTimeout();

  @override
  String toString() {
    return 'AuthFailure.smsTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SmsTimeout);
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
    TResult Function()? serverError,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? smsTimeout,
    TResult Function()? sessionExpired,
    TResult Function()? invalidVerificationCode,
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
    TResult Function(_ServerError value)? serverError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_SmsTimeout value)? smsTimeout,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_InvalidVerificationCode value)? invalidVerificationCode,
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
  const factory _SmsTimeout() = _$_SmsTimeout;
}

/// @nodoc
abstract class _$$_SessionExpiredCopyWith<$Res> {
  factory _$$_SessionExpiredCopyWith(
          _$_SessionExpired value, $Res Function(_$_SessionExpired) then) =
      __$$_SessionExpiredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SessionExpiredCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_SessionExpiredCopyWith<$Res> {
  __$$_SessionExpiredCopyWithImpl(
      _$_SessionExpired _value, $Res Function(_$_SessionExpired) _then)
      : super(_value, (v) => _then(v as _$_SessionExpired));

  @override
  _$_SessionExpired get _value => super._value as _$_SessionExpired;
}

/// @nodoc

class _$_SessionExpired implements _SessionExpired {
  const _$_SessionExpired();

  @override
  String toString() {
    return 'AuthFailure.sessionExpired()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SessionExpired);
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
    TResult Function()? serverError,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? smsTimeout,
    TResult Function()? sessionExpired,
    TResult Function()? invalidVerificationCode,
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
    TResult Function(_ServerError value)? serverError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_SmsTimeout value)? smsTimeout,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_InvalidVerificationCode value)? invalidVerificationCode,
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
  const factory _SessionExpired() = _$_SessionExpired;
}

/// @nodoc
abstract class _$$_InvalidVerificationCodeCopyWith<$Res> {
  factory _$$_InvalidVerificationCodeCopyWith(_$_InvalidVerificationCode value,
          $Res Function(_$_InvalidVerificationCode) then) =
      __$$_InvalidVerificationCodeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidVerificationCodeCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_InvalidVerificationCodeCopyWith<$Res> {
  __$$_InvalidVerificationCodeCopyWithImpl(_$_InvalidVerificationCode _value,
      $Res Function(_$_InvalidVerificationCode) _then)
      : super(_value, (v) => _then(v as _$_InvalidVerificationCode));

  @override
  _$_InvalidVerificationCode get _value =>
      super._value as _$_InvalidVerificationCode;
}

/// @nodoc

class _$_InvalidVerificationCode implements _InvalidVerificationCode {
  const _$_InvalidVerificationCode();

  @override
  String toString() {
    return 'AuthFailure.invalidVerificationCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidVerificationCode);
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
    TResult Function()? serverError,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? smsTimeout,
    TResult Function()? sessionExpired,
    TResult Function()? invalidVerificationCode,
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
    TResult Function(_ServerError value)? serverError,
    TResult Function(_TooManyRequests value)? tooManyRequests,
    TResult Function(_DeviceNotSupported value)? deviceNotSupported,
    TResult Function(_SmsTimeout value)? smsTimeout,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_InvalidVerificationCode value)? invalidVerificationCode,
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
  const factory _InvalidVerificationCode() = _$_InvalidVerificationCode;
}
