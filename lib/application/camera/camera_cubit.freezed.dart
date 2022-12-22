// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CameraState {
  List<CameraDescription> get cameras => throw _privateConstructorUsedError;
  int get sizeOfTheTakenPhoto => throw _privateConstructorUsedError;
  String get pathOfTheTakenPhoto => throw _privateConstructorUsedError;
  bool get isInProgress => throw _privateConstructorUsedError;
  bool get isCameraPermissionGranted => throw _privateConstructorUsedError;

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
      {List<CameraDescription> cameras,
      int sizeOfTheTakenPhoto,
      String pathOfTheTakenPhoto,
      bool isInProgress,
      bool isCameraPermissionGranted});
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
    Object? cameras = null,
    Object? sizeOfTheTakenPhoto = null,
    Object? pathOfTheTakenPhoto = null,
    Object? isInProgress = null,
    Object? isCameraPermissionGranted = null,
  }) {
    return _then(_value.copyWith(
      cameras: null == cameras
          ? _value.cameras
          : cameras // ignore: cast_nullable_to_non_nullable
              as List<CameraDescription>,
      sizeOfTheTakenPhoto: null == sizeOfTheTakenPhoto
          ? _value.sizeOfTheTakenPhoto
          : sizeOfTheTakenPhoto // ignore: cast_nullable_to_non_nullable
              as int,
      pathOfTheTakenPhoto: null == pathOfTheTakenPhoto
          ? _value.pathOfTheTakenPhoto
          : pathOfTheTakenPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      isCameraPermissionGranted: null == isCameraPermissionGranted
          ? _value.isCameraPermissionGranted
          : isCameraPermissionGranted // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {List<CameraDescription> cameras,
      int sizeOfTheTakenPhoto,
      String pathOfTheTakenPhoto,
      bool isInProgress,
      bool isCameraPermissionGranted});
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
    Object? cameras = null,
    Object? sizeOfTheTakenPhoto = null,
    Object? pathOfTheTakenPhoto = null,
    Object? isInProgress = null,
    Object? isCameraPermissionGranted = null,
  }) {
    return _then(_$_CameraState(
      cameras: null == cameras
          ? _value._cameras
          : cameras // ignore: cast_nullable_to_non_nullable
              as List<CameraDescription>,
      sizeOfTheTakenPhoto: null == sizeOfTheTakenPhoto
          ? _value.sizeOfTheTakenPhoto
          : sizeOfTheTakenPhoto // ignore: cast_nullable_to_non_nullable
              as int,
      pathOfTheTakenPhoto: null == pathOfTheTakenPhoto
          ? _value.pathOfTheTakenPhoto
          : pathOfTheTakenPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      isCameraPermissionGranted: null == isCameraPermissionGranted
          ? _value.isCameraPermissionGranted
          : isCameraPermissionGranted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CameraState implements _CameraState {
  const _$_CameraState(
      {required final List<CameraDescription> cameras,
      required this.sizeOfTheTakenPhoto,
      required this.pathOfTheTakenPhoto,
      required this.isInProgress,
      required this.isCameraPermissionGranted})
      : _cameras = cameras;

  final List<CameraDescription> _cameras;
  @override
  List<CameraDescription> get cameras {
    if (_cameras is EqualUnmodifiableListView) return _cameras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cameras);
  }

  @override
  final int sizeOfTheTakenPhoto;
  @override
  final String pathOfTheTakenPhoto;
  @override
  final bool isInProgress;
  @override
  final bool isCameraPermissionGranted;

  @override
  String toString() {
    return 'CameraState(cameras: $cameras, sizeOfTheTakenPhoto: $sizeOfTheTakenPhoto, pathOfTheTakenPhoto: $pathOfTheTakenPhoto, isInProgress: $isInProgress, isCameraPermissionGranted: $isCameraPermissionGranted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CameraState &&
            const DeepCollectionEquality().equals(other._cameras, _cameras) &&
            (identical(other.sizeOfTheTakenPhoto, sizeOfTheTakenPhoto) ||
                other.sizeOfTheTakenPhoto == sizeOfTheTakenPhoto) &&
            (identical(other.pathOfTheTakenPhoto, pathOfTheTakenPhoto) ||
                other.pathOfTheTakenPhoto == pathOfTheTakenPhoto) &&
            (identical(other.isInProgress, isInProgress) ||
                other.isInProgress == isInProgress) &&
            (identical(other.isCameraPermissionGranted,
                    isCameraPermissionGranted) ||
                other.isCameraPermissionGranted == isCameraPermissionGranted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cameras),
      sizeOfTheTakenPhoto,
      pathOfTheTakenPhoto,
      isInProgress,
      isCameraPermissionGranted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CameraStateCopyWith<_$_CameraState> get copyWith =>
      __$$_CameraStateCopyWithImpl<_$_CameraState>(this, _$identity);
}

abstract class _CameraState implements CameraState {
  const factory _CameraState(
      {required final List<CameraDescription> cameras,
      required final int sizeOfTheTakenPhoto,
      required final String pathOfTheTakenPhoto,
      required final bool isInProgress,
      required final bool isCameraPermissionGranted}) = _$_CameraState;

  @override
  List<CameraDescription> get cameras;
  @override
  int get sizeOfTheTakenPhoto;
  @override
  String get pathOfTheTakenPhoto;
  @override
  bool get isInProgress;
  @override
  bool get isCameraPermissionGranted;
  @override
  @JsonKey(ignore: true)
  _$$_CameraStateCopyWith<_$_CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}
