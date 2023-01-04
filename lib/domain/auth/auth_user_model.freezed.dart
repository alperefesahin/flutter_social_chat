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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_AuthUserModelCopyWith<$Res>
    implements $AuthUserModelCopyWith<$Res> {
  factory _$$_AuthUserModelCopyWith(
          _$_AuthUserModel value, $Res Function(_$_AuthUserModel) then) =
      __$$_AuthUserModelCopyWithImpl<$Res>;
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
class __$$_AuthUserModelCopyWithImpl<$Res>
    extends _$AuthUserModelCopyWithImpl<$Res, _$_AuthUserModel>
    implements _$$_AuthUserModelCopyWith<$Res> {
  __$$_AuthUserModelCopyWithImpl(
      _$_AuthUserModel _value, $Res Function(_$_AuthUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phoneNumber = null,
    Object? isOnboardingCompleted = null,
    Object? userName = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$_AuthUserModel(
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
class _$_AuthUserModel extends _AuthUserModel {
  const _$_AuthUserModel(
      {required this.id,
      required this.phoneNumber,
      required this.isOnboardingCompleted,
      this.userName,
      this.photoUrl})
      : super._();

  factory _$_AuthUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthUserModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthUserModel &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, phoneNumber, isOnboardingCompleted, userName, photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthUserModelCopyWith<_$_AuthUserModel> get copyWith =>
      __$$_AuthUserModelCopyWithImpl<_$_AuthUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthUserModelToJson(
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
      final String? photoUrl}) = _$_AuthUserModel;
  const _AuthUserModel._() : super._();

  factory _AuthUserModel.fromJson(Map<String, dynamic> json) =
      _$_AuthUserModel.fromJson;

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
  @override
  @JsonKey(ignore: true)
  _$$_AuthUserModelCopyWith<_$_AuthUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
