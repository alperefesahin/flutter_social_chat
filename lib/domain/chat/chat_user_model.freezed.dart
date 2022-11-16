// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatUserModel {
  List<String> get teams => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get lastActive => throw _privateConstructorUsedError;

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
  $Res call({List<String> teams, DateTime? createdAt, DateTime? lastActive});
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
    Object? teams = null,
    Object? createdAt = freezed,
    Object? lastActive = freezed,
  }) {
    return _then(_value.copyWith(
      teams: null == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastActive: freezed == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
  $Res call({List<String> teams, DateTime? createdAt, DateTime? lastActive});
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
    Object? teams = null,
    Object? createdAt = freezed,
    Object? lastActive = freezed,
  }) {
    return _then(_$_ChatUserModel(
      teams: null == teams
          ? _value._teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastActive: freezed == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_ChatUserModel extends _ChatUserModel {
  const _$_ChatUserModel(
      {required final List<String> teams,
      required this.createdAt,
      required this.lastActive})
      : _teams = teams,
        super._();

  final List<String> _teams;
  @override
  List<String> get teams {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teams);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? lastActive;

  @override
  String toString() {
    return 'ChatUserModel(teams: $teams, createdAt: $createdAt, lastActive: $lastActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatUserModel &&
            const DeepCollectionEquality().equals(other._teams, _teams) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastActive, lastActive) ||
                other.lastActive == lastActive));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_teams), createdAt, lastActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatUserModelCopyWith<_$_ChatUserModel> get copyWith =>
      __$$_ChatUserModelCopyWithImpl<_$_ChatUserModel>(this, _$identity);
}

abstract class _ChatUserModel extends ChatUserModel {
  const factory _ChatUserModel(
      {required final List<String> teams,
      required final DateTime? createdAt,
      required final DateTime? lastActive}) = _$_ChatUserModel;
  const _ChatUserModel._() : super._();

  @override
  List<String> get teams;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get lastActive;
  @override
  @JsonKey(ignore: true)
  _$$_ChatUserModelCopyWith<_$_ChatUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
