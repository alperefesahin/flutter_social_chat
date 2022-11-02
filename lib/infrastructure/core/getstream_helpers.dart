import 'package:flutter_production_app/domain/auth/i_auth_service.dart';
import 'package:flutter_production_app/domain/chat/chat_user_model.dart';
import 'package:flutter_production_app/injection.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

extension GetstreamUserDomainX on OwnUser {
  Future<ChatUserModel> toDomain() async {
    final authService = getIt<IAuthService>();

    final signedInAuthUser = await authService.getSignedInUser().then(
          (authUserOption) => authUserOption.fold(
            () {},
            (authUser) => authUser,
          ),
        );

    final nameOfTheSignedInUser = signedInAuthUser!.displayName;
    final imageOfTheSignedInUser = signedInAuthUser.photoUrl;
    final phoneNumberOfTheSignedInUser = signedInAuthUser.phoneNumber;

    return ChatUserModel(
      id: id,
      name: nameOfTheSignedInUser ?? "New User",
      createdAt: createdAt,
      image: imageOfTheSignedInUser ?? "default image (when user has no image)",
      phoneNumber: phoneNumberOfTheSignedInUser,
      lastActive: lastActive,
      teams: teams,
      totalUnreadCount: totalUnreadCount,
    );
  }
}
