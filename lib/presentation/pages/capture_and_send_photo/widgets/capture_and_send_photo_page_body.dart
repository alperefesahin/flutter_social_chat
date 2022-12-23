import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_app/application/chat/chat_management/chat_management_cubit.dart';
import 'package:flutter_production_app/presentation/pages/capture_and_send_photo/widgets/user_card.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class CaptureAndSendPhotoPageBody extends StatelessWidget {
  const CaptureAndSendPhotoPageBody({super.key, required this.state});
  final ChatManagementState state;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final currentUid = StreamChat.of(context).currentUser!.id;

    return RefreshIndicator(
      onRefresh: () async => context.read<ChatManagementCubit>().reset(),
      child: SizedBox(
        width: deviceWidth,
        height: deviceHeight,
        child: ListView.builder(
          itemCount: state.currentUserChannels.length,
          itemBuilder: (context, index) {
            final memberName = state.currentUserChannels[index].name;
            final memberImage = state.currentUserChannels[index].image;
            final memberlastMessageTime =
                formatDate(state.currentUserChannels[index].lastMessageAt!, [D]);

            final channelCreatedTime =
                formatDate(state.currentUserChannels[index].createdAt!, [yyyy, '-', mm, '-', dd]);

            final user = state.currentUserChannels
                .map((channel) => channel)
                .toList()[index]
                .state!
                .members
                .where(
                  (member) => member.userId != currentUid,
                )
                .toList()
                .map((e) => e.user)
                .first;

            final isUserSelected = state.listOfSelectedUserIDs.contains(user!.id);

            return InkWell(
              onTap: () {
                if (isUserSelected) {
                  context.read<ChatManagementCubit>().removeUserToSendCapturedPhoto(
                        user: user,
                      );
                } else {
                  context.read<ChatManagementCubit>().selectUserToSendCapturedPhoto(
                        user: user,
                      );
                }
              },
              child: UserCard(
                deviceHeight: deviceHeight,
                deviceWidth: deviceWidth,
                isUserSelected: isUserSelected,
                memberImage: memberImage!,
                memberName: memberName!,
                memberlastMessageTime: memberlastMessageTime,
                channelCreatedTime: channelCreatedTime,
              ),
            );
          },
        ),
      ),
    );
  }
}
