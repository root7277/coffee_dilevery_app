import 'package:coffee_deliveyr_app_project/resource/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppIcon {
  static const Icon groupAdd = Icon(Icons.group_add, color: AppColors.elevatedButtonColor);
  static const Icon person = Icon(Icons.person);
  static const Icon dateRange = Icon(Icons.date_range);
  static const Icon arrowBack = Icon(Icons.arrow_back_ios, color: AppColors.loginBackground);
  static const Icon addAPhoto = Icon(Icons.add_a_photo, color: AppColors.addAPhotoIcon, size: 30);
}
