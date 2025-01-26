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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MicrophoneState {
  bool get isMicrophonePermissionGranted => throw _privateConstructorUsedError;

  /// Create a copy of MicrophoneState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of MicrophoneState
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$MicrophoneStateImplCopyWith<$Res>
    implements $MicrophoneStateCopyWith<$Res> {
  factory _$$MicrophoneStateImplCopyWith(_$MicrophoneStateImpl value,
          $Res Function(_$MicrophoneStateImpl) then) =
      __$$MicrophoneStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isMicrophonePermissionGranted});
}

/// @nodoc
class __$$MicrophoneStateImplCopyWithImpl<$Res>
    extends _$MicrophoneStateCopyWithImpl<$Res, _$MicrophoneStateImpl>
    implements _$$MicrophoneStateImplCopyWith<$Res> {
  __$$MicrophoneStateImplCopyWithImpl(
      _$MicrophoneStateImpl _value, $Res Function(_$MicrophoneStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MicrophoneState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMicrophonePermissionGranted = null,
  }) {
    return _then(_$MicrophoneStateImpl(
      isMicrophonePermissionGranted: null == isMicrophonePermissionGranted
          ? _value.isMicrophonePermissionGranted
          : isMicrophonePermissionGranted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MicrophoneStateImpl implements _MicrophoneState {
  const _$MicrophoneStateImpl({required this.isMicrophonePermissionGranted});

  @override
  final bool isMicrophonePermissionGranted;

  @override
  String toString() {
    return 'MicrophoneState(isMicrophonePermissionGranted: $isMicrophonePermissionGranted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MicrophoneStateImpl &&
            (identical(other.isMicrophonePermissionGranted,
                    isMicrophonePermissionGranted) ||
                other.isMicrophonePermissionGranted ==
                    isMicrophonePermissionGranted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMicrophonePermissionGranted);

  /// Create a copy of MicrophoneState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MicrophoneStateImplCopyWith<_$MicrophoneStateImpl> get copyWith =>
      __$$MicrophoneStateImplCopyWithImpl<_$MicrophoneStateImpl>(
          this, _$identity);
}

abstract class _MicrophoneState implements MicrophoneState {
  const factory _MicrophoneState(
          {required final bool isMicrophonePermissionGranted}) =
      _$MicrophoneStateImpl;

  @override
  bool get isMicrophonePermissionGranted;

  /// Create a copy of MicrophoneState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MicrophoneStateImplCopyWith<_$MicrophoneStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
