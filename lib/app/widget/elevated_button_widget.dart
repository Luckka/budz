import 'package:budz/app/theme/app_colors.dart';
import 'package:budz/app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        width: size.width * 0.8,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.blueTitle
        ),
        child: Center(child: Text("SALVAR",style: AppTextStyles.labelInputText.copyWith(color: AppColors.white,fontWeight: FontWeight.w700),)),
      ),
    );
  }
}