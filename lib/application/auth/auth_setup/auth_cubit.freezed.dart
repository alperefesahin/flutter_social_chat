// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  AuthUserModel get authUser => throw _privateConstructorUsedError;
  bool get isUserCheckedFromAuthService => throw _privateConstructorUsedError;
  bool get isInProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {AuthUserModel authUser,
      bool isUserCheckedFromAuthService,
      bool isInProgress});

  $AuthUserModelCopyWith<$Res> get authUser;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authUser = null,
    Object? isUserCheckedFromAuthService = null,
    Object? isInProgress = null,
  }) {
    return _then(_value.copyWith(
      authUser: null == authUser
          ? _value.authUser
          : authUser // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      isUserCheckedFromAuthService: null == isUserCheckedFromAuthService
          ? _value.isUserCheckedFromAuthService
          : isUserCheckedFromAuthService // ignore: cast_nullable_to_non_nullable
              as bool,
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthUserModelCopyWith<$Res> get authUser {
    return $AuthUserModelCopyWith<$Res>(_value.authUser, (value) {
      return _then(_value.copyWith(authUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthUserModel authUser,
      bool isUserCheckedFromAuthService,
      bool isInProgress});

  @override
  $AuthUserModelCopyWith<$Res> get authUser;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authUser = null,
    Object? isUserCheckedFromAuthService = null,
    Object? isInProgress = null,
  }) {
    return _then(_$_AuthState(
      authUser: null == authUser
          ? _value.authUser
          : authUser // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      isUserCheckedFromAuthService: null == isUserCheckedFromAuthService
          ? _value.isUserCheckedFromAuthService
          : isUserCheckedFromAuthService // ignore: cast_nullable_to_non_nullable
              as bool,
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthState extends _AuthState with DiagnosticableTreeMixin {
  const _$_AuthState(
      {required this.authUser,
      required this.isUserCheckedFromAuthService,
      required this.isInProgress})
      : super._();

  @override
  final AuthUserModel authUser;
  @override
  final bool isUserCheckedFromAuthService;
  @override
  final bool isInProgress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(authUser: $authUser, isUserCheckedFromAuthService: $isUserCheckedFromAuthService, isInProgress: $isInProgress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('authUser', authUser))
      ..add(DiagnosticsProperty(
          'isUserCheckedFromAuthService', isUserCheckedFromAuthService))
      ..add(DiagnosticsProperty('isInProgress', isInProgress));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.authUser, authUser) ||
                other.authUser == authUser) &&
            (identical(other.isUserCheckedFromAuthService,
                    isUserCheckedFromAuthService) ||
                other.isUserCheckedFromAuthService ==
                    isUserCheckedFromAuthService) &&
            (identical(other.isInProgress, isInProgress) ||
                other.isInProgress == isInProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, authUser, isUserCheckedFromAuthService, isInProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {required final AuthUserModel authUser,
      required final bool isUserCheckedFromAuthService,
      required final bool isInProgress}) = _$_AuthState;
  const _AuthState._() : super._();

  @override
  AuthUserModel get authUser;
  @override
  bool get isUserCheckedFromAuthService;
  @override
  bool get isInProgress;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
