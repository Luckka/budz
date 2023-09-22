import 'package:budz/app/theme/app_colors.dart';
import 'package:budz/app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ProfileCardCategoryComponent extends StatelessWidget {
  final String image;
  final String categoryTitle;
  final double topRight;
  final double topLeft;
  final double bottomLeft;
  final double bottomRight;
  final Function()? onTap;
  const ProfileCardCategoryComponent(
      {super.key,
      required this.image,
      required this.categoryTitle,
      required this.topRight,
      required this.topLeft,
      required this.bottomLeft,
      required this.bottomRight,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeft),
          topRight: Radius.circular(topRight),
          bottomLeft: Radius.circular(bottomLeft),
          bottomRight: Radius.circular(bottomRight),
        ),
        color: AppColors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Image.asset(image),
                SizedBox(width: 16),
                Text(
                  categoryTitle,
                  style: AppTextStyles.titleCategory,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: const Icon(Icons.keyboard_arrow_right_outlined),
            ),
          )
        ],
      ),
    );
  }
}
