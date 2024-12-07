import 'package:demo_blog/config/assets/app_images.dart';
import 'package:demo_blog/config/strings/app_strings.dart';
import 'package:demo_blog/config/theme/app_colors.dart';
import 'package:demo_blog/config/theme/app_styles.dart';
import 'package:demo_blog/ui/widgets/social_network_button.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.backgroundPageColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        margin: const EdgeInsets.only(left: 40, top: 20, right: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: const Alignment(-0.95, 1),
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 60),
                    width: size.width,
                    height: size.height * 0.35,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      child: Image.asset(
                        AppImages.bannerProfile,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: AppColors.borderColor, width: 4)),
                    height: size.height * 0.15,
                    width: size.height * 0.15,
                    child: ClipOval(
                      child: Image.asset(
                        AppImages.photoProfile,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.5,
                      child: const Text(
                        AppStrings.name,
                        style: AppStyles.title,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: size.width * 0.5,
                      child: const Text(
                        AppStrings.professionalRole,
                        style: AppStyles.normalText,
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: size.width,
                      child: const Text(
                        AppStrings.aboutMe,
                        style: AppStyles.normalText,
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: size.width * 0.5,
                      child: const Text(
                        AppStrings.skillsTitle,
                        style: AppStyles.title,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: size.width,
                      child: const Text(
                        AppStrings.skillsDescription,
                        style: AppStyles.normalText,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const SocialNetworkButton(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
