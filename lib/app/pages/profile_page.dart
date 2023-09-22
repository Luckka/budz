import 'package:budz/app/components/profile_card_category_component.dart';
import 'package:budz/app/components/profile_header_component.dart';
import 'package:budz/app/data/mock.dart';
import 'package:flutter/material.dart';

import '../components/bottom_navigation_bar_component.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
     
      backgroundColor: Color(0XFFF0F0F0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileHeaderComponent(
              userName: AppMock.userName,
              email: AppMock.email,
              userImage: AppMock.userImage,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 350,
                child: ListView.builder(
                    itemBuilder: (_, index) {
                      final item = AppMock.card.elementAt(index);

                      return ProfileCardCategoryComponent(
                        image: item.image,
                        categoryTitle: item.title,
                        topLeft: item.topLeft ?? 0,
                        topRight: item.topRight ?? 0,
                        bottomLeft: item.bottomLeft ?? 0,
                        bottomRight: item.bottomRight ?? 0,
                        onTap: item.onTap,
                      );
                    },
                    itemCount: AppMock.card.length),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 64,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.border),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
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
                          Image.asset("assets/logout.png"),
                          SizedBox(width: 16),
                          Text(
                            "Sair",
                            style: AppTextStyles.titleCategory,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: const Icon(Icons.keyboard_arrow_right_outlined),
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(height: 139),

            const Text("Versão 1.0.1",style: AppTextStyles.bodyMedium,),
            const SizedBox(height: 12),

            const BottomNavigationBarComponent()
          ],
        ),
      ),
       
    );
  }
}
