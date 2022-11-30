// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'camera_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CameraState {
  bool get cameraCaptureInProgress => throw _privateConstructorUsedError;
  Option<CameraFailure> get cameraInitFailureOption =>
      throw _privateConstructorUsedError;
  Option<CameraFailure> get cameraCaptureFailureOption =>
      throw _privateConstructorUsedError;
  String get cameraCaptureSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraStateCopyWith<CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
          CameraState value, $Res Function(CameraState) then) =
      _$CameraStateCopyWithImpl<$Res, CameraState>;
  @useResult
  $Res call(
      {bool cameraCaptureInProgress,
      Option<CameraFailure> cameraInitFailureOption,
      Option<CameraFailure> cameraCaptureFailureOption,
      String cameraCaptureSuccess});
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res, $Val extends CameraState>
    implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraCaptureInProgress = null,
    Object? cameraInitFailureOption = null,
    Object? cameraCaptureFailureOption = null,
    Object? cameraCaptureSuccess = null,
  }) {
    return _then(_value.copyWith(
      cameraCaptureInProgress: null == cameraCaptureInProgress
          ? _value.cameraCaptureInProgress
          : cameraCaptureInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraInitFailureOption: null == cameraInitFailureOption
          ? _value.cameraInitFailureOption
          : cameraInitFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<CameraFailure>,
      cameraCaptureFailureOption: null == cameraCaptureFailureOption
          ? _value.cameraCaptureFailureOption
          : cameraCaptureFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<CameraFailure>,
      cameraCaptureSuccess: null == cameraCaptureSuccess
          ? _value.cameraCaptureSuccess
          : cameraCaptureSuccess // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CameraStateCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$$_CameraStateCopyWith(
          _$_CameraState value, $Res Function(_$_CameraState) then) =
      __$$_CameraStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool cameraCaptureInProgress,
      Option<CameraFailure> cameraInitFailureOption,
      Option<CameraFailure> cameraCaptureFailureOption,
      String cameraCaptureSuccess});
}

/// @nodoc
class __$$_CameraStateCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$_CameraState>
    implements _$$_CameraStateCopyWith<$Res> {
  __$$_CameraStateCopyWithImpl(
      _$_CameraState _value, $Res Function(_$_CameraState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraCaptureInProgress = null,
    Object? cameraInitFailureOption = null,
    Object? cameraCaptureFailureOption = null,
    Object? cameraCaptureSuccess = null,
  }) {
    return _then(_$_CameraState(
      cameraCaptureInProgress: null == cameraCaptureInProgress
          ? _value.cameraCaptureInProgress
          : cameraCaptureInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraInitFailureOption: null == cameraInitFailureOption
          ? _value.cameraInitFailureOption
          : cameraInitFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<CameraFailure>,
      cameraCaptureFailureOption: null == cameraCaptureFailureOption
          ? _value.cameraCaptureFailureOption
          : cameraCaptureFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<CameraFailure>,
      cameraCaptureSuccess: null == cameraCaptureSuccess
          ? _value.cameraCaptureSuccess
          : cameraCaptureSuccess // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CameraState with DiagnosticableTreeMixin implements _CameraState {
  const _$_CameraState(
      {required this.cameraCaptureInProgress,
      required this.cameraInitFailureOption,
      required this.cameraCaptureFailureOption,
      required this.cameraCaptureSuccess});

  @override
  final bool cameraCaptureInProgress;
  @override
  final Option<CameraFailure> cameraInitFailureOption;
  @override
  final Option<CameraFailure> cameraCaptureFailureOption;
  @override
  final String cameraCaptureSuccess;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CameraState(cameraCaptureInProgress: $cameraCaptureInProgress, cameraInitFailureOption: $cameraInitFailureOption, cameraCaptureFailureOption: $cameraCaptureFailureOption, cameraCaptureSuccess: $cameraCaptureSuccess)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CameraState'))
      ..add(DiagnosticsProperty(
          'cameraCaptureInProgress', cameraCaptureInProgress))
      ..add(DiagnosticsProperty(
          'cameraInitFailureOption', cameraInitFailureOption))
      ..add(DiagnosticsProperty(
          'cameraCaptureFailureOption', cameraCaptureFailureOption))
      ..add(DiagnosticsProperty('cameraCaptureSuccess', cameraCaptureSuccess));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CameraState &&
            (identical(
                    other.cameraCaptureInProgress, cameraCaptureInProgress) ||
                other.cameraCaptureInProgress == cameraCaptureInProgress) &&
            (identical(
                    other.cameraInitFailureOption, cameraInitFailureOption) ||
                other.cameraInitFailureOption == cameraInitFailureOption) &&
            (identical(other.cameraCaptureFailureOption,
                    cameraCaptureFailureOption) ||
                other.cameraCaptureFailureOption ==
                    cameraCaptureFailureOption) &&
            (identical(other.cameraCaptureSuccess, cameraCaptureSuccess) ||
                other.cameraCaptureSuccess == cameraCaptureSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      cameraCaptureInProgress,
      cameraInitFailureOption,
      cameraCaptureFailureOption,
      cameraCaptureSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CameraStateCopyWith<_$_CameraState> get copyWith =>
      __$$_CameraStateCopyWithImpl<_$_CameraState>(this, _$identity);
}

abstract class _CameraState implements CameraState {
  const factory _CameraState(
      {required final bool cameraCaptureInProgress,
      required final Option<CameraFailure> cameraInitFailureOption,
      required final Option<CameraFailure> cameraCaptureFailureOption,
      required final String cameraCaptureSuccess}) = _$_CameraState;

  @override
  bool get cameraCaptureInProgress;
  @override
  Option<CameraFailure> get cameraInitFailureOption;
  @override
  Option<CameraFailure> get cameraCaptureFailureOption;
  @override
  String get cameraCaptureSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_CameraStateCopyWith<_$_CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}
