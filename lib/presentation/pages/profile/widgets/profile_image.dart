import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key, required this.userPhotoUrl});
  final String? userPhotoUrl;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return CachedNetworkImage(
      imageUrl: userPhotoUrl!,
      imageBuilder: (context, imageProvider) => Container(
        width: size.height / 6,
        height: size.height / 6,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(80),
          ),
          border: Border.all(
            color: kiwiBackColor,
            width: 4,
          ),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) => Container(
        width: size.height / 6,
        height: size.height / 6,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(80),
          ),
          border: Border.all(
            color: kiwiBackColor,
            width: 3,
          ),
        ),
        child: const Center(
          child: CircularProgressIndicator(
            color: blackColor,
          ),
        ),
      ),
      errorWidget: (context, url, error) {
        return Container();
      },
    );
  }
}
