// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatUserModel _$ChatUserModelFromJson(Map<String, dynamic> json) {
  return _ChatUserModel.fromJson(json);
}

/// @nodoc
mixin _$ChatUserModel {
  String get createdAt => throw _privateConstructorUsedError;
  String get userRole => throw _privateConstructorUsedError;
  bool get isUserBanned => throw _privateConstructorUsedError;

  /// Serializes this ChatUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatUserModelCopyWith<ChatUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUserModelCopyWith<$Res> {
  factory $ChatUserModelCopyWith(
          ChatUserModel value, $Res Function(ChatUserModel) then) =
      _$ChatUserModelCopyWithImpl<$Res, ChatUserModel>;
  @useResult
  $Res call({String createdAt, String userRole, bool isUserBanned});
}

/// @nodoc
class _$ChatUserModelCopyWithImpl<$Res, $Val extends ChatUserModel>
    implements $ChatUserModelCopyWith<$Res> {
  _$ChatUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? userRole = null,
    Object? isUserBanned = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      userRole: null == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String,
      isUserBanned: null == isUserBanned
          ? _value.isUserBanned
          : isUserBanned // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatUserModelImplCopyWith<$Res>
    implements $ChatUserModelCopyWith<$Res> {
  factory _$$ChatUserModelImplCopyWith(
          _$ChatUserModelImpl value, $Res Function(_$ChatUserModelImpl) then) =
      __$$ChatUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String createdAt, String userRole, bool isUserBanned});
}

/// @nodoc
class __$$ChatUserModelImplCopyWithImpl<$Res>
    extends _$ChatUserModelCopyWithImpl<$Res, _$ChatUserModelImpl>
    implements _$$ChatUserModelImplCopyWith<$Res> {
  __$$ChatUserModelImplCopyWithImpl(
      _$ChatUserModelImpl _value, $Res Function(_$ChatUserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? userRole = null,
    Object? isUserBanned = null,
  }) {
    return _then(_$ChatUserModelImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      userRole: null == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String,
      isUserBanned: null == isUserBanned
          ? _value.isUserBanned
          : isUserBanned // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatUserModelImpl extends _ChatUserModel {
  const _$ChatUserModelImpl(
      {required this.createdAt,
      required this.userRole,
      required this.isUserBanned})
      : super._();

  factory _$ChatUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatUserModelImplFromJson(json);

  @override
  final String createdAt;
  @override
  final String userRole;
  @override
  final bool isUserBanned;

  @override
  String toString() {
    return 'ChatUserModel(createdAt: $createdAt, userRole: $userRole, isUserBanned: $isUserBanned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatUserModelImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole) &&
            (identical(other.isUserBanned, isUserBanned) ||
                other.isUserBanned == isUserBanned));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, userRole, isUserBanned);

  /// Create a copy of ChatUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatUserModelImplCopyWith<_$ChatUserModelImpl> get copyWith =>
      __$$ChatUserModelImplCopyWithImpl<_$ChatUserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatUserModelImplToJson(
      this,
    );
  }
}

abstract class _ChatUserModel extends ChatUserModel {
  const factory _ChatUserModel(
      {required final String createdAt,
      required final String userRole,
      required final bool isUserBanned}) = _$ChatUserModelImpl;
  const _ChatUserModel._() : super._();

  factory _ChatUserModel.fromJson(Map<String, dynamic> json) =
      _$ChatUserModelImpl.fromJson;

  @override
  String get createdAt;
  @override
  String get userRole;
  @override
  bool get isUserBanned;

  /// Create a copy of ChatUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatUserModelImplCopyWith<_$ChatUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
