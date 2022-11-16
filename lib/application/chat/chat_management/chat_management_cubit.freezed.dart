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
  String get channelName => throw _privateConstructorUsedError;
  String get channelImageUrl => throw _privateConstructorUsedError;
  Set<String> get listOfSelectedUserIDs => throw _privateConstructorUsedError;
  List<Channel> get filteredChannels => throw _privateConstructorUsedError;

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
      {String channelName,
      String channelImageUrl,
      Set<String> listOfSelectedUserIDs,
      List<Channel> filteredChannels});
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
    Object? channelName = null,
    Object? channelImageUrl = null,
    Object? listOfSelectedUserIDs = null,
    Object? filteredChannels = null,
  }) {
    return _then(_value.copyWith(
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      channelImageUrl: null == channelImageUrl
          ? _value.channelImageUrl
          : channelImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      listOfSelectedUserIDs: null == listOfSelectedUserIDs
          ? _value.listOfSelectedUserIDs
          : listOfSelectedUserIDs // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      filteredChannels: null == filteredChannels
          ? _value.filteredChannels
          : filteredChannels // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
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
      {String channelName,
      String channelImageUrl,
      Set<String> listOfSelectedUserIDs,
      List<Channel> filteredChannels});
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
    Object? channelName = null,
    Object? channelImageUrl = null,
    Object? listOfSelectedUserIDs = null,
    Object? filteredChannels = null,
  }) {
    return _then(_$_Initial(
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      channelImageUrl: null == channelImageUrl
          ? _value.channelImageUrl
          : channelImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      listOfSelectedUserIDs: null == listOfSelectedUserIDs
          ? _value._listOfSelectedUserIDs
          : listOfSelectedUserIDs // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      filteredChannels: null == filteredChannels
          ? _value._filteredChannels
          : filteredChannels // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
    ));
  }
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial(
      {required this.channelName,
      required this.channelImageUrl,
      required final Set<String> listOfSelectedUserIDs,
      required final List<Channel> filteredChannels})
      : _listOfSelectedUserIDs = listOfSelectedUserIDs,
        _filteredChannels = filteredChannels;

  @override
  final String channelName;
  @override
  final String channelImageUrl;
  final Set<String> _listOfSelectedUserIDs;
  @override
  Set<String> get listOfSelectedUserIDs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_listOfSelectedUserIDs);
  }

  final List<Channel> _filteredChannels;
  @override
  List<Channel> get filteredChannels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredChannels);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatManagementState(channelName: $channelName, channelImageUrl: $channelImageUrl, listOfSelectedUserIDs: $listOfSelectedUserIDs, filteredChannels: $filteredChannels)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatManagementState'))
      ..add(DiagnosticsProperty('channelName', channelName))
      ..add(DiagnosticsProperty('channelImageUrl', channelImageUrl))
      ..add(DiagnosticsProperty('listOfSelectedUserIDs', listOfSelectedUserIDs))
      ..add(DiagnosticsProperty('filteredChannels', filteredChannels));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.channelImageUrl, channelImageUrl) ||
                other.channelImageUrl == channelImageUrl) &&
            const DeepCollectionEquality()
                .equals(other._listOfSelectedUserIDs, _listOfSelectedUserIDs) &&
            const DeepCollectionEquality()
                .equals(other._filteredChannels, _filteredChannels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      channelName,
      channelImageUrl,
      const DeepCollectionEquality().hash(_listOfSelectedUserIDs),
      const DeepCollectionEquality().hash(_filteredChannels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements ChatManagementState {
  const factory _Initial(
      {required final String channelName,
      required final String channelImageUrl,
      required final Set<String> listOfSelectedUserIDs,
      required final List<Channel> filteredChannels}) = _$_Initial;

  @override
  String get channelName;
  @override
  String get channelImageUrl;
  @override
  Set<String> get listOfSelectedUserIDs;
  @override
  List<Channel> get filteredChannels;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
