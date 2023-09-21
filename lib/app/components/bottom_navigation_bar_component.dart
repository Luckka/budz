import 'package:budz/app/theme/app_colors.dart';
import 'package:budz/app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarComponent extends StatelessWidget {
  const BottomNavigationBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.white,
      width: size.width,
      height: size.height * 0.13,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
          children: [
            InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Image.asset("assets/home.png"),
                  SizedBox(height: 8),
                  const Text("Inicio",style: AppTextStyles.bodyMedium,)
                ],
              ),
            ),
            InkWell(
              onTap: () {
                
              },
              child: Column(
                children: [
                  Image.asset("assets/journey.png"),
                  SizedBox(height: 8),
                  Text("Jornadas",style: AppTextStyles.bodyMedium,)
                ],
              ),
            ),
            InkWell(
              onTap: () {
                
              },
              child: Column(
                children: [
                  Image.asset("assets/chat.png"),
                  SizedBox(height: 8),
                  Text("Chatbot",style: AppTextStyles.bodyMedium,)
                ],
              ),
            ),
            InkWell(
              onTap: () {
                
              },
              child: Column(
                children: [
                  Image.asset("assets/profile_filled.png"),
                  SizedBox(height: 8),
                  Text("Perfil",style: AppTextStyles.bodyMedium,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}