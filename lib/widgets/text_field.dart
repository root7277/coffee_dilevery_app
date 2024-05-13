import 'package:coffee_deliveyr_app_project/resource/app_colors.dart';
import 'package:coffee_deliveyr_app_project/resource/app_style.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String hintText;
  final Icon icon;
  const TextFieldWidget({super.key, required this.hintText, required this.icon});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 336,
      height: 47,
      child: TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: AppStyle.hintTextStyle,
          icon: widget.icon,
          iconColor: AppColors.textFieldIconColor,
          filled: true,
          fillColor: AppColors.textFieldColor,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
