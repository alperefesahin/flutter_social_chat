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
  bool get isChannelNameValid => throw _privateConstructorUsedError;

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
      List<Channel> filteredChannels,
      bool isChannelNameValid});
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
    Object? isChannelNameValid = null,
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
      isChannelNameValid: null == isChannelNameValid
          ? _value.isChannelNameValid
          : isChannelNameValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatManagementStateCopyWith<$Res>
    implements $ChatManagementStateCopyWith<$Res> {
  factory _$$_ChatManagementStateCopyWith(_$_ChatManagementState value,
          $Res Function(_$_ChatManagementState) then) =
      __$$_ChatManagementStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String channelName,
      String channelImageUrl,
      Set<String> listOfSelectedUserIDs,
      List<Channel> filteredChannels,
      bool isChannelNameValid});
}

/// @nodoc
class __$$_ChatManagementStateCopyWithImpl<$Res>
    extends _$ChatManagementStateCopyWithImpl<$Res, _$_ChatManagementState>
    implements _$$_ChatManagementStateCopyWith<$Res> {
  __$$_ChatManagementStateCopyWithImpl(_$_ChatManagementState _value,
      $Res Function(_$_ChatManagementState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelName = null,
    Object? channelImageUrl = null,
    Object? listOfSelectedUserIDs = null,
    Object? filteredChannels = null,
    Object? isChannelNameValid = null,
  }) {
    return _then(_$_ChatManagementState(
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
      isChannelNameValid: null == isChannelNameValid
          ? _value.isChannelNameValid
          : isChannelNameValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChatManagementState implements _ChatManagementState {
  const _$_ChatManagementState(
      {required this.channelName,
      required this.channelImageUrl,
      required final Set<String> listOfSelectedUserIDs,
      required final List<Channel> filteredChannels,
      required this.isChannelNameValid})
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
  final bool isChannelNameValid;

  @override
  String toString() {
    return 'ChatManagementState(channelName: $channelName, channelImageUrl: $channelImageUrl, listOfSelectedUserIDs: $listOfSelectedUserIDs, filteredChannels: $filteredChannels, isChannelNameValid: $isChannelNameValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatManagementState &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.channelImageUrl, channelImageUrl) ||
                other.channelImageUrl == channelImageUrl) &&
            const DeepCollectionEquality()
                .equals(other._listOfSelectedUserIDs, _listOfSelectedUserIDs) &&
            const DeepCollectionEquality()
                .equals(other._filteredChannels, _filteredChannels) &&
            (identical(other.isChannelNameValid, isChannelNameValid) ||
                other.isChannelNameValid == isChannelNameValid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      channelName,
      channelImageUrl,
      const DeepCollectionEquality().hash(_listOfSelectedUserIDs),
      const DeepCollectionEquality().hash(_filteredChannels),
      isChannelNameValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatManagementStateCopyWith<_$_ChatManagementState> get copyWith =>
      __$$_ChatManagementStateCopyWithImpl<_$_ChatManagementState>(
          this, _$identity);
}

abstract class _ChatManagementState implements ChatManagementState {
  const factory _ChatManagementState(
      {required final String channelName,
      required final String channelImageUrl,
      required final Set<String> listOfSelectedUserIDs,
      required final List<Channel> filteredChannels,
      required final bool isChannelNameValid}) = _$_ChatManagementState;

  @override
  String get channelName;
  @override
  String get channelImageUrl;
  @override
  Set<String> get listOfSelectedUserIDs;
  @override
  List<Channel> get filteredChannels;
  @override
  bool get isChannelNameValid;
  @override
  @JsonKey(ignore: true)
  _$$_ChatManagementStateCopyWith<_$_ChatManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}
