// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthUserModel {
  String get id => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthUserModelCopyWith<AuthUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserModelCopyWith<$Res> {
  factory $AuthUserModelCopyWith(
          AuthUserModel value, $Res Function(AuthUserModel) then) =
      _$AuthUserModelCopyWithImpl<$Res>;
  $Res call({String id, String phoneNumber});
}

/// @nodoc
class _$AuthUserModelCopyWithImpl<$Res>
    implements $AuthUserModelCopyWith<$Res> {
  _$AuthUserModelCopyWithImpl(this._value, this._then);

  final AuthUserModel _value;
  // ignore: unused_field
  final $Res Function(AuthUserModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthUserModelCopyWith<$Res>
    implements $AuthUserModelCopyWith<$Res> {
  factory _$$_AuthUserModelCopyWith(
          _$_AuthUserModel value, $Res Function(_$_AuthUserModel) then) =
      __$$_AuthUserModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String phoneNumber});
}

/// @nodoc
class __$$_AuthUserModelCopyWithImpl<$Res>
    extends _$AuthUserModelCopyWithImpl<$Res>
    implements _$$_AuthUserModelCopyWith<$Res> {
  __$$_AuthUserModelCopyWithImpl(
      _$_AuthUserModel _value, $Res Function(_$_AuthUserModel) _then)
      : super(_value, (v) => _then(v as _$_AuthUserModel));

  @override
  _$_AuthUserModel get _value => super._value as _$_AuthUserModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_AuthUserModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthUserModel extends _AuthUserModel {
  const _$_AuthUserModel({required this.id, required this.phoneNumber})
      : super._();

  @override
  final String id;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthUserModel(id: $id, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthUserModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$_AuthUserModelCopyWith<_$_AuthUserModel> get copyWith =>
      __$$_AuthUserModelCopyWithImpl<_$_AuthUserModel>(this, _$identity);
}

abstract class _AuthUserModel extends AuthUserModel {
  const factory _AuthUserModel(
      {required final String id,
      required final String phoneNumber}) = _$_AuthUserModel;
  const _AuthUserModel._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthUserModelCopyWith<_$_AuthUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
