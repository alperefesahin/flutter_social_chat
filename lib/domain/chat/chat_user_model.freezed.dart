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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatUserModel _$ChatUserModelFromJson(Map<String, dynamic> json) {
  return _ChatUserModel.fromJson(json);
}

/// @nodoc
mixin _$ChatUserModel {
  String get createdAt => throw _privateConstructorUsedError;
  String get userRole => throw _privateConstructorUsedError;
  bool get isUserBanned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_ChatUserModelCopyWith<$Res>
    implements $ChatUserModelCopyWith<$Res> {
  factory _$$_ChatUserModelCopyWith(
          _$_ChatUserModel value, $Res Function(_$_ChatUserModel) then) =
      __$$_ChatUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String createdAt, String userRole, bool isUserBanned});
}

/// @nodoc
class __$$_ChatUserModelCopyWithImpl<$Res>
    extends _$ChatUserModelCopyWithImpl<$Res, _$_ChatUserModel>
    implements _$$_ChatUserModelCopyWith<$Res> {
  __$$_ChatUserModelCopyWithImpl(
      _$_ChatUserModel _value, $Res Function(_$_ChatUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? userRole = null,
    Object? isUserBanned = null,
  }) {
    return _then(_$_ChatUserModel(
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
class _$_ChatUserModel extends _ChatUserModel {
  const _$_ChatUserModel(
      {required this.createdAt,
      required this.userRole,
      required this.isUserBanned})
      : super._();

  factory _$_ChatUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatUserModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatUserModel &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole) &&
            (identical(other.isUserBanned, isUserBanned) ||
                other.isUserBanned == isUserBanned));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, userRole, isUserBanned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatUserModelCopyWith<_$_ChatUserModel> get copyWith =>
      __$$_ChatUserModelCopyWithImpl<_$_ChatUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatUserModelToJson(
      this,
    );
  }
}

abstract class _ChatUserModel extends ChatUserModel {
  const factory _ChatUserModel(
      {required final String createdAt,
      required final String userRole,
      required final bool isUserBanned}) = _$_ChatUserModel;
  const _ChatUserModel._() : super._();

  factory _ChatUserModel.fromJson(Map<String, dynamic> json) =
      _$_ChatUserModel.fromJson;

  @override
  String get createdAt;
  @override
  String get userRole;
  @override
  bool get isUserBanned;
  @override
  @JsonKey(ignore: true)
  _$$_ChatUserModelCopyWith<_$_ChatUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
