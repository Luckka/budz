// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:budz/app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ProfileHeaderComponent extends StatelessWidget {
  final String userName;
  final String email;
  final String? userImage;

  const ProfileHeaderComponent({
    Key? key,
    required this.userName,
    this.userImage,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.only(
        top: mediaQuery.viewPadding.top + 22,
        left: 16,
        right: 16,
        bottom: 10,
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 56,
                width: 56,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: theme.primaryColorLight,
                  shape: BoxShape.circle,
                ),
                child: userImage != null
                    ? Image.network(userImage!)
                    : Icon(
                        Icons.add_a_photo_outlined,
                        color: theme.appBarTheme.iconTheme?.color,
                      ),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(userName, style: AppTextStyles.titleMedium),
                  SizedBox(height: 4),
                  Text(email, style: AppTextStyles.labelMedium),
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
