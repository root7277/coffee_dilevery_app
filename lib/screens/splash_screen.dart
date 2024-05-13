import 'package:coffee_deliveyr_app_project/resource/app_colors.dart';
import 'package:coffee_deliveyr_app_project/resource/app_style.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushNamed(context, 'login_screen');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashScreenBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/lottie/splash_lottie.json'),
            const SizedBox(height: 30),
            const Text('Welcome', style: AppStyle.splashWelcome),
          ],
        ),
      ),
    );
  }
}
