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
  List<CameraDescription> get cameras => throw _privateConstructorUsedError;
  String get pathOfTheTakenPhoto => throw _privateConstructorUsedError;
  bool get isInProgress => throw _privateConstructorUsedError;

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
      String pathOfTheTakenPhoto,
      bool isInProgress});
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
    Object? pathOfTheTakenPhoto = null,
    Object? isInProgress = null,
  }) {
    return _then(_value.copyWith(
      cameras: null == cameras
          ? _value.cameras
          : cameras // ignore: cast_nullable_to_non_nullable
              as List<CameraDescription>,
      pathOfTheTakenPhoto: null == pathOfTheTakenPhoto
          ? _value.pathOfTheTakenPhoto
          : pathOfTheTakenPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
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
      String pathOfTheTakenPhoto,
      bool isInProgress});
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
    Object? pathOfTheTakenPhoto = null,
    Object? isInProgress = null,
  }) {
    return _then(_$_CameraState(
      cameras: null == cameras
          ? _value._cameras
          : cameras // ignore: cast_nullable_to_non_nullable
              as List<CameraDescription>,
      pathOfTheTakenPhoto: null == pathOfTheTakenPhoto
          ? _value.pathOfTheTakenPhoto
          : pathOfTheTakenPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CameraState with DiagnosticableTreeMixin implements _CameraState {
  const _$_CameraState(
      {required final List<CameraDescription> cameras,
      required this.pathOfTheTakenPhoto,
      required this.isInProgress})
      : _cameras = cameras;

  final List<CameraDescription> _cameras;
  @override
  List<CameraDescription> get cameras {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cameras);
  }

  @override
  final String pathOfTheTakenPhoto;
  @override
  final bool isInProgress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CameraState(cameras: $cameras, pathOfTheTakenPhoto: $pathOfTheTakenPhoto, isInProgress: $isInProgress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CameraState'))
      ..add(DiagnosticsProperty('cameras', cameras))
      ..add(DiagnosticsProperty('pathOfTheTakenPhoto', pathOfTheTakenPhoto))
      ..add(DiagnosticsProperty('isInProgress', isInProgress));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CameraState &&
            const DeepCollectionEquality().equals(other._cameras, _cameras) &&
            (identical(other.pathOfTheTakenPhoto, pathOfTheTakenPhoto) ||
                other.pathOfTheTakenPhoto == pathOfTheTakenPhoto) &&
            (identical(other.isInProgress, isInProgress) ||
                other.isInProgress == isInProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cameras),
      pathOfTheTakenPhoto,
      isInProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CameraStateCopyWith<_$_CameraState> get copyWith =>
      __$$_CameraStateCopyWithImpl<_$_CameraState>(this, _$identity);
}

abstract class _CameraState implements CameraState {
  const factory _CameraState(
      {required final List<CameraDescription> cameras,
      required final String pathOfTheTakenPhoto,
      required final bool isInProgress}) = _$_CameraState;

  @override
  List<CameraDescription> get cameras;
  @override
  String get pathOfTheTakenPhoto;
  @override
  bool get isInProgress;
  @override
  @JsonKey(ignore: true)
  _$$_CameraStateCopyWith<_$_CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}
