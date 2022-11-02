// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  ChatUserModel get chatUser => throw _privateConstructorUsedError;
  bool get isUserLoggedIn => throw _privateConstructorUsedError;
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
      ChatUserModel chatUser,
      bool isUserLoggedIn,
      bool isInProgress});

  $AuthUserModelCopyWith<$Res> get authUser;
  $ChatUserModelCopyWith<$Res> get chatUser;
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
    Object? chatUser = null,
    Object? isUserLoggedIn = null,
    Object? isInProgress = null,
  }) {
    return _then(_value.copyWith(
      authUser: null == authUser
          ? _value.authUser
          : authUser // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      chatUser: null == chatUser
          ? _value.chatUser
          : chatUser // ignore: cast_nullable_to_non_nullable
              as ChatUserModel,
      isUserLoggedIn: null == isUserLoggedIn
          ? _value.isUserLoggedIn
          : isUserLoggedIn // ignore: cast_nullable_to_non_nullable
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

  @override
  @pragma('vm:prefer-inline')
  $ChatUserModelCopyWith<$Res> get chatUser {
    return $ChatUserModelCopyWith<$Res>(_value.chatUser, (value) {
      return _then(_value.copyWith(chatUser: value) as $Val);
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
      ChatUserModel chatUser,
      bool isUserLoggedIn,
      bool isInProgress});

  @override
  $AuthUserModelCopyWith<$Res> get authUser;
  @override
  $ChatUserModelCopyWith<$Res> get chatUser;
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
    Object? chatUser = null,
    Object? isUserLoggedIn = null,
    Object? isInProgress = null,
  }) {
    return _then(_$_AuthState(
      authUser: null == authUser
          ? _value.authUser
          : authUser // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      chatUser: null == chatUser
          ? _value.chatUser
          : chatUser // ignore: cast_nullable_to_non_nullable
              as ChatUserModel,
      isUserLoggedIn: null == isUserLoggedIn
          ? _value.isUserLoggedIn
          : isUserLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.authUser,
      required this.chatUser,
      required this.isUserLoggedIn,
      required this.isInProgress});

  @override
  final AuthUserModel authUser;
  @override
  final ChatUserModel chatUser;
  @override
  final bool isUserLoggedIn;
  @override
  final bool isInProgress;

  @override
  String toString() {
    return 'AuthState(authUser: $authUser, chatUser: $chatUser, isUserLoggedIn: $isUserLoggedIn, isInProgress: $isInProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.authUser, authUser) ||
                other.authUser == authUser) &&
            (identical(other.chatUser, chatUser) ||
                other.chatUser == chatUser) &&
            (identical(other.isUserLoggedIn, isUserLoggedIn) ||
                other.isUserLoggedIn == isUserLoggedIn) &&
            (identical(other.isInProgress, isInProgress) ||
                other.isInProgress == isInProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, authUser, chatUser, isUserLoggedIn, isInProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final AuthUserModel authUser,
      required final ChatUserModel chatUser,
      required final bool isUserLoggedIn,
      required final bool isInProgress}) = _$_AuthState;

  @override
  AuthUserModel get authUser;
  @override
  ChatUserModel get chatUser;
  @override
  bool get isUserLoggedIn;
  @override
  bool get isInProgress;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
