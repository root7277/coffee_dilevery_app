import 'package:coffee_deliveyr_app_project/resource/app_colors.dart';
import 'package:coffee_deliveyr_app_project/resource/app_icon.dart';
import 'package:coffee_deliveyr_app_project/resource/app_images.dart';
import 'package:coffee_deliveyr_app_project/resource/app_style.dart';
import 'package:coffee_deliveyr_app_project/widgets/profile_edit.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24, top: 60, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: () => Navigator.pop(context), icon: AppIcon.arrowBack),
                const SizedBox(width: 60),
                const Text('Edit Profile', style: AppStyle.editProfileText),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: Stack(
                children: [
                  const CircleAvatar(backgroundImage: AssetImage(AppImages.profileImage), radius: 80),
                  Positioned(
                    left: 110,
                    top: 115,
                    child: IconButton(onPressed: () {}, icon: AppIcon.addAPhoto),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text('FirstName', style: AppStyle.profileName),
            const SizedBox(height: 10),
            const ProfileEdit(),
            const SizedBox(height: 30),
            const Text('LastName', style: AppStyle.profileName),
            const SizedBox(height: 10),
            const ProfileEdit(),
            const SizedBox(height: 30),
            const Text('Date of Birth', style: AppStyle.profileName),
            const SizedBox(height: 10),
            const ProfileEdit(),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(336, 47)),
                backgroundColor: MaterialStatePropertyAll(AppColors.loginBackground),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              child: const Text(
                'Save',
                style: AppStyle.telegramGroup,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
