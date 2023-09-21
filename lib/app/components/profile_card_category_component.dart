import 'package:budz/app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileCardCategoryComponent extends StatelessWidget {
  final String image;
  final String categoryTitle;
  const ProfileCardCategoryComponent(
      {super.key, required this.image, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: AppColors.white,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(200),
            topRight: Radius.circular(100),
          ),
          color: AppColors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(image),
            Text(categoryTitle),
            const Icon(Icons.keyboard_arrow_right_outlined)
          ],
        ),
      ),
    );
  }
}
