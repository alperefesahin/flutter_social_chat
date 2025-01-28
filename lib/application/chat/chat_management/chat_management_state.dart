import 'package:equatable/equatable.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChatManagementState extends Equatable {
  const ChatManagementState({
    this.isInProgress = false,
    this.isChannelNameValid = false,
    this.isChannelCreated = false,
    this.isCapturedPhotoSent = false,
    this.channelName = '',
    this.userIndex = 0,
    this.listOfSelectedUserIDs = const {},
    this.listOfSelectedUsers = const {},
    this.currentUserChannels = const [],
  });

  final bool isInProgress;
  final bool isChannelNameValid;
  final bool isChannelCreated;
  final bool isCapturedPhotoSent;
  final String channelName;
  final int userIndex;
  final Set<String> listOfSelectedUserIDs;
  final Set<User> listOfSelectedUsers;
  final List<Channel> currentUserChannels;

  @override
  List<Object> get props => [
        isInProgress,
        isChannelNameValid,
        isChannelCreated,
        isCapturedPhotoSent,
        channelName,
        userIndex,
        listOfSelectedUserIDs,
        listOfSelectedUsers,
        currentUserChannels,
      ];

  ChatManagementState copyWith({
    bool? isInProgress,
    bool? isChannelNameValid,
    bool? isChannelCreated,
    bool? isCapturedPhotoSent,
    String? channelName,
    int? userIndex,
    Set<String>? listOfSelectedUserIDs,
    Set<User>? listOfSelectedUsers,
    List<Channel>? currentUserChannels,
  }) {
    return ChatManagementState(
      isInProgress: isInProgress ?? this.isInProgress,
      isChannelNameValid: isChannelNameValid ?? this.isChannelNameValid,
      isChannelCreated: isChannelCreated ?? this.isChannelCreated,
      isCapturedPhotoSent: isCapturedPhotoSent ?? this.isCapturedPhotoSent,
      channelName: channelName ?? this.channelName,
      userIndex: userIndex ?? this.userIndex,
      listOfSelectedUserIDs: listOfSelectedUserIDs ?? this.listOfSelectedUserIDs,
      listOfSelectedUsers: listOfSelectedUsers ?? this.listOfSelectedUsers,
      currentUserChannels: currentUserChannels ?? this.currentUserChannels,
    );
  }

  factory ChatManagementState.empty() => const ChatManagementState();
}
