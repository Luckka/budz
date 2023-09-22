import 'package:budz/app/data/mock.dart';
import 'package:budz/app/theme/app_colors.dart';
import 'package:budz/app/theme/app_text_styles.dart';
import 'package:budz/app/widget/text_form_field_widget.dart';
import 'package:flutter/material.dart';

import '../widget/elevated_button_widget.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dropValue = ValueNotifier('');
    final dropOpcoes = ['Masculino', 'Feminino'];
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: Icon(
          Icons.arrow_back,
          color: AppColors.blackText,
        ),
        title: Text(
          "Editar Perfil",
          style: AppTextStyles.titleAppBar,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Center(
              child: Container(
                  height: 96,
                  width: 96,
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(AppMock.userImage)),
            ),
            SizedBox(height: 22.5),
            Text(
              "ALTERAR FOTO",
              style: AppTextStyles.titleCategory.copyWith(
                  color: AppColors.blueTitle, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nome",
                  style: AppTextStyles.labelInputText,
                ),
                SizedBox(height: 10),
                const TextFormFieldWidget(),
                SizedBox(height: 24),
                Text(
                  "Email",
                  style: AppTextStyles.labelInputText,
                ),
                SizedBox(height: 10),
                const TextFormFieldWidget(),
                 SizedBox(height: 24),
                Text(
                  "Gênero",
                  style: AppTextStyles.labelInputText,
                ),
                 SizedBox(height: 10),
                ValueListenableBuilder(
                    valueListenable: dropValue,
                    builder: (BuildContext context, String value, _) {
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.border),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: size.width * 0.8,
                        height: size.height * 0.1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                                value: (value.isEmpty) ? null : value,
                                hint:  Text("Selecione uma opção",style: AppTextStyles.titleCategory.copyWith(color: AppColors.border),),
                                items: dropOpcoes
                                    .map((e) => DropdownMenuItem(
                                          value: e,
                                          child: Text(e),
                                        ))
                                    .toList(),
                                onChanged: (e) => dropValue.value = e.toString()),
                          ),
                        ),
                      );
                    }),

                  Column(
                    children: [
                       const SizedBox(height: 24),
                  const ElevatedButtonWidget(),
                  const SizedBox(height: 24),
                  InkWell(
                    onTap: () {
                      
                    },
                    child: Text("Excluir Conta",style: AppTextStyles.labelInputText,),
                  )
                    ],
                  ),

                  SizedBox(height: 90,)
                 
              ],
            ),
          ],
        ),
      ),
    );
  }
}
