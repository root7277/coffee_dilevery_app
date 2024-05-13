import 'package:coffee_deliveyr_app_project/screens/login_screen.dart';
import 'package:coffee_deliveyr_app_project/screens/profile_screen.dart';
import 'package:coffee_deliveyr_app_project/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash_screen',
      routes: {
        'splash_screen': (context) => const SplashScreen(),
        'login_screen': (context) => const LoginScreen(),
        'profile_screen': (context) => const ProfileScreen(),
      },
    );
  }
}
