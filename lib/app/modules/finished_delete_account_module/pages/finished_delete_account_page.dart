import 'package:budz/app/theme/app_colors.dart';
import 'package:budz/app/theme/app_text_styles.dart';
import 'package:budz/app/widget/elevated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FinishedDeleteAccountPage extends StatelessWidget {
  const FinishedDeleteAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
                SizedBox(height: 24),
              Center(child: Image.asset("assets/logotype.png")),
              Column(
        
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
             
                children: [
                  SizedBox(height: 64),
                  Image.asset("assets/happy_dog.png"),
                  Text("Sua conta foi excluída",style: AppTextStyles.titleMedium,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("É uma pena ver você indo embora! Mas fica tranquilo, estaremos de braços abertos caso queira voltar. Até logo! 💙",style: AppTextStyles.titleCategory,textAlign: TextAlign.center,),
                  ),
                  SizedBox(height: 50),
                  ElevatedButtonWidget(color: AppColors.blueTitle, text: "Continuar",onTap: () {
                    Modular.to.navigate("/");
                  },)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
