// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_management_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatManagementState {
  List<String> get listOfSelectedUserIDs => throw _privateConstructorUsedError;
  String get channelName => throw _privateConstructorUsedError;
  String get channelImageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatManagementStateCopyWith<ChatManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatManagementStateCopyWith<$Res> {
  factory $ChatManagementStateCopyWith(
          ChatManagementState value, $Res Function(ChatManagementState) then) =
      _$ChatManagementStateCopyWithImpl<$Res, ChatManagementState>;
  @useResult
  $Res call(
      {List<String> listOfSelectedUserIDs,
      String channelName,
      String channelImageUrl});
}

/// @nodoc
class _$ChatManagementStateCopyWithImpl<$Res, $Val extends ChatManagementState>
    implements $ChatManagementStateCopyWith<$Res> {
  _$ChatManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listOfSelectedUserIDs = null,
    Object? channelName = null,
    Object? channelImageUrl = null,
  }) {
    return _then(_value.copyWith(
      listOfSelectedUserIDs: null == listOfSelectedUserIDs
          ? _value.listOfSelectedUserIDs
          : listOfSelectedUserIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      channelImageUrl: null == channelImageUrl
          ? _value.channelImageUrl
          : channelImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ChatManagementStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> listOfSelectedUserIDs,
      String channelName,
      String channelImageUrl});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ChatManagementStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listOfSelectedUserIDs = null,
    Object? channelName = null,
    Object? channelImageUrl = null,
  }) {
    return _then(_$_Initial(
      listOfSelectedUserIDs: null == listOfSelectedUserIDs
          ? _value._listOfSelectedUserIDs
          : listOfSelectedUserIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      channelImageUrl: null == channelImageUrl
          ? _value.channelImageUrl
          : channelImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<String> listOfSelectedUserIDs,
      required this.channelName,
      required this.channelImageUrl})
      : _listOfSelectedUserIDs = listOfSelectedUserIDs;

  final List<String> _listOfSelectedUserIDs;
  @override
  List<String> get listOfSelectedUserIDs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfSelectedUserIDs);
  }

  @override
  final String channelName;
  @override
  final String channelImageUrl;

  @override
  String toString() {
    return 'ChatManagementState(listOfSelectedUserIDs: $listOfSelectedUserIDs, channelName: $channelName, channelImageUrl: $channelImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._listOfSelectedUserIDs, _listOfSelectedUserIDs) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.channelImageUrl, channelImageUrl) ||
                other.channelImageUrl == channelImageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listOfSelectedUserIDs),
      channelName,
      channelImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements ChatManagementState {
  const factory _Initial(
      {required final List<String> listOfSelectedUserIDs,
      required final String channelName,
      required final String channelImageUrl}) = _$_Initial;

  @override
  List<String> get listOfSelectedUserIDs;
  @override
  String get channelName;
  @override
  String get channelImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
