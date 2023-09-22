import 'package:budz/app/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class DeleteAccountDetailsPage extends StatelessWidget {
  const DeleteAccountDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            
            children: [
              Text("Conta pra gente, qual o motivo da exclusão?",style: AppTextStyles.titleLarge,)
            ],
          ),
        ),
      ),
    );
  }
}