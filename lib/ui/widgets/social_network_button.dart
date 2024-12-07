import 'package:demo_blog/config/assets/app_images.dart';
import 'package:demo_blog/config/strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialNetworkButton extends StatelessWidget {
  const SocialNetworkButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () async {
              await launchUrl(Uri.parse(AppStrings.socialNetworksFacebook));
            },
            icon: SvgPicture.asset(
              AppImages.facebook,
              width: 40,
              height: 40,
            )),
        IconButton(
            onPressed: () async {
              await launchUrl(Uri.parse(
                AppStrings.socialNetworksInstagram,
              ));
            },
            icon: SvgPicture.asset(AppImages.instagram, width: 40, height: 40)),
        IconButton(
            onPressed: () async {
              await launchUrl(Uri.parse(AppStrings.socialNetworksLinkedin));
            },
            icon: SvgPicture.asset(AppImages.linkedIn, width: 40, height: 40)),
      ],
    );
  }
}
