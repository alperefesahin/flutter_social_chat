// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_management_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthManagementState {
  bool get isUserNameValid => throw _privateConstructorUsedError;
  bool get isInProgress => throw _privateConstructorUsedError;
  String get userProfilePhotoUrl => throw _privateConstructorUsedError;
  String get selectedImagePath => throw _privateConstructorUsedError;

  /// Create a copy of AuthManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthManagementStateCopyWith<AuthManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthManagementStateCopyWith<$Res> {
  factory $AuthManagementStateCopyWith(
          AuthManagementState value, $Res Function(AuthManagementState) then) =
      _$AuthManagementStateCopyWithImpl<$Res, AuthManagementState>;
  @useResult
  $Res call(
      {bool isUserNameValid,
      bool isInProgress,
      String userProfilePhotoUrl,
      String selectedImagePath});
}

/// @nodoc
class _$AuthManagementStateCopyWithImpl<$Res, $Val extends AuthManagementState>
    implements $AuthManagementStateCopyWith<$Res> {
  _$AuthManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUserNameValid = null,
    Object? isInProgress = null,
    Object? userProfilePhotoUrl = null,
    Object? selectedImagePath = null,
  }) {
    return _then(_value.copyWith(
      isUserNameValid: null == isUserNameValid
          ? _value.isUserNameValid
          : isUserNameValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      userProfilePhotoUrl: null == userProfilePhotoUrl
          ? _value.userProfilePhotoUrl
          : userProfilePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      selectedImagePath: null == selectedImagePath
          ? _value.selectedImagePath
          : selectedImagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthManagementStateImplCopyWith<$Res>
    implements $AuthManagementStateCopyWith<$Res> {
  factory _$$AuthManagementStateImplCopyWith(_$AuthManagementStateImpl value,
          $Res Function(_$AuthManagementStateImpl) then) =
      __$$AuthManagementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isUserNameValid,
      bool isInProgress,
      String userProfilePhotoUrl,
      String selectedImagePath});
}

/// @nodoc
class __$$AuthManagementStateImplCopyWithImpl<$Res>
    extends _$AuthManagementStateCopyWithImpl<$Res, _$AuthManagementStateImpl>
    implements _$$AuthManagementStateImplCopyWith<$Res> {
  __$$AuthManagementStateImplCopyWithImpl(_$AuthManagementStateImpl _value,
      $Res Function(_$AuthManagementStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthManagementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUserNameValid = null,
    Object? isInProgress = null,
    Object? userProfilePhotoUrl = null,
    Object? selectedImagePath = null,
  }) {
    return _then(_$AuthManagementStateImpl(
      isUserNameValid: null == isUserNameValid
          ? _value.isUserNameValid
          : isUserNameValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      userProfilePhotoUrl: null == userProfilePhotoUrl
          ? _value.userProfilePhotoUrl
          : userProfilePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      selectedImagePath: null == selectedImagePath
          ? _value.selectedImagePath
          : selectedImagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthManagementStateImpl implements _AuthManagementState {
  const _$AuthManagementStateImpl(
      {required this.isUserNameValid,
      required this.isInProgress,
      required this.userProfilePhotoUrl,
      required this.selectedImagePath});

  @override
  final bool isUserNameValid;
  @override
  final bool isInProgress;
  @override
  final String userProfilePhotoUrl;
  @override
  final String selectedImagePath;

  @override
  String toString() {
    return 'AuthManagementState(isUserNameValid: $isUserNameValid, isInProgress: $isInProgress, userProfilePhotoUrl: $userProfilePhotoUrl, selectedImagePath: $selectedImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthManagementStateImpl &&
            (identical(other.isUserNameValid, isUserNameValid) ||
                other.isUserNameValid == isUserNameValid) &&
            (identical(other.isInProgress, isInProgress) ||
                other.isInProgress == isInProgress) &&
            (identical(other.userProfilePhotoUrl, userProfilePhotoUrl) ||
                other.userProfilePhotoUrl == userProfilePhotoUrl) &&
            (identical(other.selectedImagePath, selectedImagePath) ||
                other.selectedImagePath == selectedImagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isUserNameValid, isInProgress,
      userProfilePhotoUrl, selectedImagePath);

  /// Create a copy of AuthManagementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthManagementStateImplCopyWith<_$AuthManagementStateImpl> get copyWith =>
      __$$AuthManagementStateImplCopyWithImpl<_$AuthManagementStateImpl>(
          this, _$identity);
}

abstract class _AuthManagementState implements AuthManagementState {
  const factory _AuthManagementState(
      {required final bool isUserNameValid,
      required final bool isInProgress,
      required final String userProfilePhotoUrl,
      required final String selectedImagePath}) = _$AuthManagementStateImpl;

  @override
  bool get isUserNameValid;
  @override
  bool get isInProgress;
  @override
  String get userProfilePhotoUrl;
  @override
  String get selectedImagePath;

  /// Create a copy of AuthManagementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthManagementStateImplCopyWith<_$AuthManagementStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
