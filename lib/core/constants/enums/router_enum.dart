enum RouterEnum {
  initialLocation('/'),
  channelsView('/channels_view'),
  cameraView('/camera_view'),
  profileView('/profile_view'),
  chatView('/chat_view'),
  captureAndSendPhotoView('/capture_and_send_photo_view'),
  signInView('/sign_in_view'),
  signInVerificationView('/sign_in_verification_view'),
  createNewChatView('/create_new_chat_view'),
  onboardingView('/onboarding_view');

  final String routeName;

  const RouterEnum(this.routeName);
}
