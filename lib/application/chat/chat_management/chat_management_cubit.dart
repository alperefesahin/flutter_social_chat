// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter_production_app/domain/chat/i_chat_service.dart';
import 'package:flutter_production_app/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_management_state.dart';
part 'chat_management_cubit.freezed.dart';

@lazySingleton
class ChatManagementCubit extends Cubit<ChatManagementState> {
  late final IChatService _chatService;

  ChatManagementCubit() : super(ChatManagementState.empty()) {
    _chatService = getIt<IChatService>();
  }

  Future<void> createNewChannel() async {
    final listOfMemberIDs = state.listOfSelectedUserIDs;
    final channelName = state.channelName;
    final channelImageUrl = state.channelImageUrl;

    await _chatService.createNewChannel(
      listOfMemberIDs: listOfMemberIDs,
      channelName: channelName,
      channelImageUrl: channelImageUrl,
    );
  }
}
