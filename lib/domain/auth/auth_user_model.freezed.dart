// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthUserModel _$AuthUserModelFromJson(Map<String, dynamic> json) {
  return _AuthUserModel.fromJson(json);
}

/// @nodoc
mixin _$AuthUserModel {
  String get id => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  bool get isOnboardingCompleted => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  /// Serializes this AuthUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthUserModelCopyWith<AuthUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserModelCopyWith<$Res> {
  factory $AuthUserModelCopyWith(
          AuthUserModel value, $Res Function(AuthUserModel) then) =
      _$AuthUserModelCopyWithImpl<$Res, AuthUserModel>;
  @useResult
  $Res call(
      {String id,
      String phoneNumber,
      bool isOnboardingCompleted,
      String? userName,
      String? photoUrl});
}

/// @nodoc
class _$AuthUserModelCopyWithImpl<$Res, $Val extends AuthUserModel>
    implements $AuthUserModelCopyWith<$Res> {
  _$AuthUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phoneNumber = null,
    Object? isOnboardingCompleted = null,
    Object? userName = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isOnboardingCompleted: null == isOnboardingCompleted
          ? _value.isOnboardingCompleted
          : isOnboardingCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthUserModelImplCopyWith<$Res>
    implements $AuthUserModelCopyWith<$Res> {
  factory _$$AuthUserModelImplCopyWith(
          _$AuthUserModelImpl value, $Res Function(_$AuthUserModelImpl) then) =
      __$$AuthUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String phoneNumber,
      bool isOnboardingCompleted,
      String? userName,
      String? photoUrl});
}

/// @nodoc
class __$$AuthUserModelImplCopyWithImpl<$Res>
    extends _$AuthUserModelCopyWithImpl<$Res, _$AuthUserModelImpl>
    implements _$$AuthUserModelImplCopyWith<$Res> {
  __$$AuthUserModelImplCopyWithImpl(
      _$AuthUserModelImpl _value, $Res Function(_$AuthUserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phoneNumber = null,
    Object? isOnboardingCompleted = null,
    Object? userName = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$AuthUserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isOnboardingCompleted: null == isOnboardingCompleted
          ? _value.isOnboardingCompleted
          : isOnboardingCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthUserModelImpl extends _AuthUserModel {
  const _$AuthUserModelImpl(
      {required this.id,
      required this.phoneNumber,
      required this.isOnboardingCompleted,
      this.userName,
      this.photoUrl})
      : super._();

  factory _$AuthUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthUserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String phoneNumber;
  @override
  final bool isOnboardingCompleted;
  @override
  final String? userName;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'AuthUserModel(id: $id, phoneNumber: $phoneNumber, isOnboardingCompleted: $isOnboardingCompleted, userName: $userName, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isOnboardingCompleted, isOnboardingCompleted) ||
                other.isOnboardingCompleted == isOnboardingCompleted) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, phoneNumber, isOnboardingCompleted, userName, photoUrl);

  /// Create a copy of AuthUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUserModelImplCopyWith<_$AuthUserModelImpl> get copyWith =>
      __$$AuthUserModelImplCopyWithImpl<_$AuthUserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthUserModelImplToJson(
      this,
    );
  }
}

abstract class _AuthUserModel extends AuthUserModel {
  const factory _AuthUserModel(
      {required final String id,
      required final String phoneNumber,
      required final bool isOnboardingCompleted,
      final String? userName,
      final String? photoUrl}) = _$AuthUserModelImpl;
  const _AuthUserModel._() : super._();

  factory _AuthUserModel.fromJson(Map<String, dynamic> json) =
      _$AuthUserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get phoneNumber;
  @override
  bool get isOnboardingCompleted;
  @override
  String? get userName;
  @override
  String? get photoUrl;

  /// Create a copy of AuthUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthUserModelImplCopyWith<_$AuthUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
