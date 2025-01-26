// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_setup_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatSetupState {
  ChatUserModel get chatUser => throw _privateConstructorUsedError;
  ConnectionStatus get webSocketConnectionStatus =>
      throw _privateConstructorUsedError;
  bool get isUserCheckedFromChatService => throw _privateConstructorUsedError;

  /// Create a copy of ChatSetupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {ChatUserModel chatUser,
      ConnectionStatus webSocketConnectionStatus,
      bool isUserCheckedFromChatService});

  $ChatUserModelCopyWith<$Res> get chatUser;
}

/// @nodoc
class _$ChatSetupStateCopyWithImpl<$Res, $Val extends ChatSetupState>
    implements $ChatSetupStateCopyWith<$Res> {
  _$ChatSetupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatSetupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatUser = null,
    Object? webSocketConnectionStatus = null,
    Object? isUserCheckedFromChatService = null,
  }) {
    return _then(_value.copyWith(
      chatUser: null == chatUser
          ? _value.chatUser
          : chatUser // ignore: cast_nullable_to_non_nullable
              as ChatUserModel,
      webSocketConnectionStatus: null == webSocketConnectionStatus
          ? _value.webSocketConnectionStatus
          : webSocketConnectionStatus // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus,
      isUserCheckedFromChatService: null == isUserCheckedFromChatService
          ? _value.isUserCheckedFromChatService
          : isUserCheckedFromChatService // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ChatSetupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatUserModelCopyWith<$Res> get chatUser {
    return $ChatUserModelCopyWith<$Res>(_value.chatUser, (value) {
      return _then(_value.copyWith(chatUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatSetupStateImplCopyWith<$Res>
    implements $ChatSetupStateCopyWith<$Res> {
  factory _$$ChatSetupStateImplCopyWith(_$ChatSetupStateImpl value,
          $Res Function(_$ChatSetupStateImpl) then) =
      __$$ChatSetupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChatUserModel chatUser,
      ConnectionStatus webSocketConnectionStatus,
      bool isUserCheckedFromChatService});

  @override
  $ChatUserModelCopyWith<$Res> get chatUser;
}

/// @nodoc
class __$$ChatSetupStateImplCopyWithImpl<$Res>
    extends _$ChatSetupStateCopyWithImpl<$Res, _$ChatSetupStateImpl>
    implements _$$ChatSetupStateImplCopyWith<$Res> {
  __$$ChatSetupStateImplCopyWithImpl(
      _$ChatSetupStateImpl _value, $Res Function(_$ChatSetupStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatSetupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatUser = null,
    Object? webSocketConnectionStatus = null,
    Object? isUserCheckedFromChatService = null,
  }) {
    return _then(_$ChatSetupStateImpl(
      chatUser: null == chatUser
          ? _value.chatUser
          : chatUser // ignore: cast_nullable_to_non_nullable
              as ChatUserModel,
      webSocketConnectionStatus: null == webSocketConnectionStatus
          ? _value.webSocketConnectionStatus
          : webSocketConnectionStatus // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus,
      isUserCheckedFromChatService: null == isUserCheckedFromChatService
          ? _value.isUserCheckedFromChatService
          : isUserCheckedFromChatService // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChatSetupStateImpl extends _ChatSetupState
    with DiagnosticableTreeMixin {
  const _$ChatSetupStateImpl(
      {required this.chatUser,
      required this.webSocketConnectionStatus,
      required this.isUserCheckedFromChatService})
      : super._();

  @override
  final ChatUserModel chatUser;
  @override
  final ConnectionStatus webSocketConnectionStatus;
  @override
  final bool isUserCheckedFromChatService;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatSetupState(chatUser: $chatUser, webSocketConnectionStatus: $webSocketConnectionStatus, isUserCheckedFromChatService: $isUserCheckedFromChatService)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatSetupState'))
      ..add(DiagnosticsProperty('chatUser', chatUser))
      ..add(DiagnosticsProperty(
          'webSocketConnectionStatus', webSocketConnectionStatus))
      ..add(DiagnosticsProperty(
          'isUserCheckedFromChatService', isUserCheckedFromChatService));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSetupStateImpl &&
            (identical(other.chatUser, chatUser) ||
                other.chatUser == chatUser) &&
            (identical(other.webSocketConnectionStatus,
                    webSocketConnectionStatus) ||
                other.webSocketConnectionStatus == webSocketConnectionStatus) &&
            (identical(other.isUserCheckedFromChatService,
                    isUserCheckedFromChatService) ||
                other.isUserCheckedFromChatService ==
                    isUserCheckedFromChatService));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatUser,
      webSocketConnectionStatus, isUserCheckedFromChatService);

  /// Create a copy of ChatSetupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSetupStateImplCopyWith<_$ChatSetupStateImpl> get copyWith =>
      __$$ChatSetupStateImplCopyWithImpl<_$ChatSetupStateImpl>(
          this, _$identity);
}

abstract class _ChatSetupState extends ChatSetupState {
  const factory _ChatSetupState(
      {required final ChatUserModel chatUser,
      required final ConnectionStatus webSocketConnectionStatus,
      required final bool isUserCheckedFromChatService}) = _$ChatSetupStateImpl;
  const _ChatSetupState._() : super._();

  @override
  ChatUserModel get chatUser;
  @override
  ConnectionStatus get webSocketConnectionStatus;
  @override
  bool get isUserCheckedFromChatService;

  /// Create a copy of ChatSetupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatSetupStateImplCopyWith<_$ChatSetupStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
