// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatSetupState {
  ChatUserModel get chatUserModel => throw _privateConstructorUsedError;
  ConnectionStatus get webSocketConnectionStatus =>
      throw _privateConstructorUsedError;
  bool get isChatUserConnected => throw _privateConstructorUsedError;
  Channel? get getstreamChannel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatSetupStateCopyWith<ChatSetupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSetupStateCopyWith<$Res> {
  factory $ChatSetupStateCopyWith(
          ChatSetupState value, $Res Function(ChatSetupState) then) =
      _$ChatSetupStateCopyWithImpl<$Res, ChatSetupState>;
  @useResult
  $Res call(
      {ChatUserModel chatUserModel,
      ConnectionStatus webSocketConnectionStatus,
      bool isChatUserConnected,
      Channel? getstreamChannel});

  $ChatUserModelCopyWith<$Res> get chatUserModel;
}

/// @nodoc
class _$ChatSetupStateCopyWithImpl<$Res, $Val extends ChatSetupState>
    implements $ChatSetupStateCopyWith<$Res> {
  _$ChatSetupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatUserModel = null,
    Object? webSocketConnectionStatus = null,
    Object? isChatUserConnected = null,
    Object? getstreamChannel = freezed,
  }) {
    return _then(_value.copyWith(
      chatUserModel: null == chatUserModel
          ? _value.chatUserModel
          : chatUserModel // ignore: cast_nullable_to_non_nullable
              as ChatUserModel,
      webSocketConnectionStatus: null == webSocketConnectionStatus
          ? _value.webSocketConnectionStatus
          : webSocketConnectionStatus // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus,
      isChatUserConnected: null == isChatUserConnected
          ? _value.isChatUserConnected
          : isChatUserConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      getstreamChannel: freezed == getstreamChannel
          ? _value.getstreamChannel
          : getstreamChannel // ignore: cast_nullable_to_non_nullable
              as Channel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatUserModelCopyWith<$Res> get chatUserModel {
    return $ChatUserModelCopyWith<$Res>(_value.chatUserModel, (value) {
      return _then(_value.copyWith(chatUserModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatSetupStateCopyWith<$Res>
    implements $ChatSetupStateCopyWith<$Res> {
  factory _$$_ChatSetupStateCopyWith(
          _$_ChatSetupState value, $Res Function(_$_ChatSetupState) then) =
      __$$_ChatSetupStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChatUserModel chatUserModel,
      ConnectionStatus webSocketConnectionStatus,
      bool isChatUserConnected,
      Channel? getstreamChannel});

  @override
  $ChatUserModelCopyWith<$Res> get chatUserModel;
}

/// @nodoc
class __$$_ChatSetupStateCopyWithImpl<$Res>
    extends _$ChatSetupStateCopyWithImpl<$Res, _$_ChatSetupState>
    implements _$$_ChatSetupStateCopyWith<$Res> {
  __$$_ChatSetupStateCopyWithImpl(
      _$_ChatSetupState _value, $Res Function(_$_ChatSetupState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatUserModel = null,
    Object? webSocketConnectionStatus = null,
    Object? isChatUserConnected = null,
    Object? getstreamChannel = freezed,
  }) {
    return _then(_$_ChatSetupState(
      chatUserModel: null == chatUserModel
          ? _value.chatUserModel
          : chatUserModel // ignore: cast_nullable_to_non_nullable
              as ChatUserModel,
      webSocketConnectionStatus: null == webSocketConnectionStatus
          ? _value.webSocketConnectionStatus
          : webSocketConnectionStatus // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus,
      isChatUserConnected: null == isChatUserConnected
          ? _value.isChatUserConnected
          : isChatUserConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      getstreamChannel: freezed == getstreamChannel
          ? _value.getstreamChannel
          : getstreamChannel // ignore: cast_nullable_to_non_nullable
              as Channel?,
    ));
  }
}

/// @nodoc

class _$_ChatSetupState
    with DiagnosticableTreeMixin
    implements _ChatSetupState {
  const _$_ChatSetupState(
      {required this.chatUserModel,
      required this.webSocketConnectionStatus,
      required this.isChatUserConnected,
      required this.getstreamChannel});

  @override
  final ChatUserModel chatUserModel;
  @override
  final ConnectionStatus webSocketConnectionStatus;
  @override
  final bool isChatUserConnected;
  @override
  final Channel? getstreamChannel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatSetupState(chatUserModel: $chatUserModel, webSocketConnectionStatus: $webSocketConnectionStatus, isChatUserConnected: $isChatUserConnected, getstreamChannel: $getstreamChannel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatSetupState'))
      ..add(DiagnosticsProperty('chatUserModel', chatUserModel))
      ..add(DiagnosticsProperty(
          'webSocketConnectionStatus', webSocketConnectionStatus))
      ..add(DiagnosticsProperty('isChatUserConnected', isChatUserConnected))
      ..add(DiagnosticsProperty('getstreamChannel', getstreamChannel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatSetupState &&
            (identical(other.chatUserModel, chatUserModel) ||
                other.chatUserModel == chatUserModel) &&
            (identical(other.webSocketConnectionStatus,
                    webSocketConnectionStatus) ||
                other.webSocketConnectionStatus == webSocketConnectionStatus) &&
            (identical(other.isChatUserConnected, isChatUserConnected) ||
                other.isChatUserConnected == isChatUserConnected) &&
            (identical(other.getstreamChannel, getstreamChannel) ||
                other.getstreamChannel == getstreamChannel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatUserModel,
      webSocketConnectionStatus, isChatUserConnected, getstreamChannel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatSetupStateCopyWith<_$_ChatSetupState> get copyWith =>
      __$$_ChatSetupStateCopyWithImpl<_$_ChatSetupState>(this, _$identity);
}

abstract class _ChatSetupState implements ChatSetupState {
  const factory _ChatSetupState(
      {required final ChatUserModel chatUserModel,
      required final ConnectionStatus webSocketConnectionStatus,
      required final bool isChatUserConnected,
      required final Channel? getstreamChannel}) = _$_ChatSetupState;

  @override
  ChatUserModel get chatUserModel;
  @override
  ConnectionStatus get webSocketConnectionStatus;
  @override
  bool get isChatUserConnected;
  @override
  Channel? get getstreamChannel;
  @override
  @JsonKey(ignore: true)
  _$$_ChatSetupStateCopyWith<_$_ChatSetupState> get copyWith =>
      throw _privateConstructorUsedError;
}
