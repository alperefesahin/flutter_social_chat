// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'microphone_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MicrophoneState {
  bool get isMicrophonePermissionGranted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MicrophoneStateCopyWith<MicrophoneState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MicrophoneStateCopyWith<$Res> {
  factory $MicrophoneStateCopyWith(
          MicrophoneState value, $Res Function(MicrophoneState) then) =
      _$MicrophoneStateCopyWithImpl<$Res, MicrophoneState>;
  @useResult
  $Res call({bool isMicrophonePermissionGranted});
}

/// @nodoc
class _$MicrophoneStateCopyWithImpl<$Res, $Val extends MicrophoneState>
    implements $MicrophoneStateCopyWith<$Res> {
  _$MicrophoneStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMicrophonePermissionGranted = null,
  }) {
    return _then(_value.copyWith(
      isMicrophonePermissionGranted: null == isMicrophonePermissionGranted
          ? _value.isMicrophonePermissionGranted
          : isMicrophonePermissionGranted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MicrophoneStateCopyWith<$Res>
    implements $MicrophoneStateCopyWith<$Res> {
  factory _$$_MicrophoneStateCopyWith(
          _$_MicrophoneState value, $Res Function(_$_MicrophoneState) then) =
      __$$_MicrophoneStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isMicrophonePermissionGranted});
}

/// @nodoc
class __$$_MicrophoneStateCopyWithImpl<$Res>
    extends _$MicrophoneStateCopyWithImpl<$Res, _$_MicrophoneState>
    implements _$$_MicrophoneStateCopyWith<$Res> {
  __$$_MicrophoneStateCopyWithImpl(
      _$_MicrophoneState _value, $Res Function(_$_MicrophoneState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMicrophonePermissionGranted = null,
  }) {
    return _then(_$_MicrophoneState(
      isMicrophonePermissionGranted: null == isMicrophonePermissionGranted
          ? _value.isMicrophonePermissionGranted
          : isMicrophonePermissionGranted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MicrophoneState implements _MicrophoneState {
  const _$_MicrophoneState({required this.isMicrophonePermissionGranted});

  @override
  final bool isMicrophonePermissionGranted;

  @override
  String toString() {
    return 'MicrophoneState(isMicrophonePermissionGranted: $isMicrophonePermissionGranted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MicrophoneState &&
            (identical(other.isMicrophonePermissionGranted,
                    isMicrophonePermissionGranted) ||
                other.isMicrophonePermissionGranted ==
                    isMicrophonePermissionGranted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMicrophonePermissionGranted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MicrophoneStateCopyWith<_$_MicrophoneState> get copyWith =>
      __$$_MicrophoneStateCopyWithImpl<_$_MicrophoneState>(this, _$identity);
}

abstract class _MicrophoneState implements MicrophoneState {
  const factory _MicrophoneState(
      {required final bool isMicrophonePermissionGranted}) = _$_MicrophoneState;

  @override
  bool get isMicrophonePermissionGranted;
  @override
  @JsonKey(ignore: true)
  _$$_MicrophoneStateCopyWith<_$_MicrophoneState> get copyWith =>
      throw _privateConstructorUsedError;
}
