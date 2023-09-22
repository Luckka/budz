import 'package:budz/app/theme/app_colors.dart';
import 'package:budz/app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final Color? color;
  final String text;
  final void Function()? onTap;
  const ElevatedButtonWidget({super.key, required this.color, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size.width * 0.8,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color
        ),
        child: Center(child: Text(text,style: AppTextStyles.labelInputText.copyWith(color: AppColors.white,fontWeight: FontWeight.w700),)),
      ),
    );
  }
}