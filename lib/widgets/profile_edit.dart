import 'package:coffee_deliveyr_app_project/resource/app_colors.dart';
import 'package:coffee_deliveyr_app_project/resource/app_style.dart';
import 'package:flutter/material.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342,
      height: 44,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        border: Border.all(color: AppColors.editProfile, width: 1),
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 15, top: 10),
        child: Text('HusanJurayev', style: AppStyle.profileContainer),
      ),
    );
  }
}
