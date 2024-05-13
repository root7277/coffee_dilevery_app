import 'package:coffee_deliveyr_app_project/resource/app_colors.dart';
import 'package:coffee_deliveyr_app_project/resource/app_icon.dart';
import 'package:coffee_deliveyr_app_project/resource/app_style.dart';
import 'package:coffee_deliveyr_app_project/widgets/text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.loginBackground,
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: Text('Login In', style: AppStyle.loginIn)),
            const SizedBox(height: 20),
            const Text(
              'Login to your Account',
              style: AppStyle.loginAccountStyle,
            ),
            const SizedBox(height: 30),
            const TextFieldWidget(hintText: 'FirstName', icon: AppIcon.person),
            const SizedBox(height: 30),
            const TextFieldWidget(hintText: 'LastName', icon: AppIcon.person),
            const SizedBox(height: 30),
            const TextFieldWidget(hintText: '18/08/2004', icon: AppIcon.dateRange),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'profile_screen');
              },
              style: const ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(336, 47)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              child: const Text(
                'Get Started',
                style: AppStyle.elevatedButtonStyle,
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Container(width: 231, height: 2, color: AppColors.lineColor),
            ),
            const SizedBox(height: 30),
            const Center(
              child: Text('Join Via', style: AppStyle.telegramGroup),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(336, 47)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppIcon.groupAdd,
                    SizedBox(width: 20),
                    Text(
                      'Telegram',
                      style: AppStyle.elevatedButtonStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
