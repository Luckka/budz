
import 'package:budz/app/data/mock.dart';
import 'package:budz/app/routes/app_routes.dart';
import 'package:budz/app/theme/app_colors.dart';
import 'package:budz/app/theme/app_text_styles.dart';
import 'package:budz/app/widget/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../widget/elevated_button_widget.dart';

class EditProfilePage extends StatelessWidget {

  const EditProfilePage({super.key,});

  @override
  Widget build(BuildContext context) {
    
    final dropValue = ValueNotifier('');
    final dropOpcoes = ['Masculino', 'Feminino'];
    var size = MediaQuery.of(context).size;
    return  Scaffold(
        
        appBar: AppBar(

          centerTitle: true,
          elevation: 0,
          backgroundColor: AppColors.white,
          
          leading: InkWell(
            onTap: () {
              Modular.to.navigate("/");
            },
            child: Icon(
              Icons.arrow_back,
              color: AppColors.blackText,
            ),
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
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 358,
                                height: 64,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border:
                                        Border.all(color: AppColors.border)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Image.asset(
                                                "assets/camera.png")),
                                        SizedBox(width: 5),
                                        Text(
                                          "Tirar foto",
                                          style: AppTextStyles.titleCategory,
                                        )
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20.0),
                                        child: const Icon(Icons
                                            .keyboard_arrow_right_outlined),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 16),
                              Container(
                                width: 358,
                                height: 64,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border:
                                        Border.all(color: AppColors.border)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Image.asset(
                                                "assets/add_photo.png")),
                                        SizedBox(width: 5),
                                        Text(
                                          "Escolher Foto",
                                          style: AppTextStyles.titleCategory,
                                        )
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20.0),
                                        child: const Icon(Icons
                                            .keyboard_arrow_right_outlined),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: Text(
                  "ALTERAR FOTO",
                  style: AppTextStyles.titleCategory.copyWith(
                      color: AppColors.blueTitle, fontWeight: FontWeight.w700),
                ),
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
                                  hint: Text(
                                    "Selecione uma opção",
                                    style: AppTextStyles.titleCategory
                                        .copyWith(color: AppColors.border),
                                  ),
                                  items: dropOpcoes
                                      .map((e) => DropdownMenuItem(
                                            value: e,
                                            child: Text(e),
                                          ))
                                      .toList(),
                                  onChanged: (e) =>
                                      dropValue.value = e.toString()),
                            ),
                          ),
                        );
                      }),
                  Column(
                    children: [
                      const SizedBox(height: 24),
                      ElevatedButtonWidget(
                        color: AppColors.blueTitle,
                        text: 'SALVAR',
                      ),
                      const SizedBox(height: 24),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: size.height * 0.85,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 16),
                                      Text(
                                        "Tem certeza que deseja encerrar a\n jornada do seu melhor amigo?",
                                        textAlign: TextAlign.center,
                                        style: AppTextStyles.titleMedium,
                                      ),
                                      Image.asset("assets/sad_dog.png"),
                                      Text(
                                          "Todas as suas informações e a evolução do seu\n pet no aplicativo serão apagadas. Essa ação\n não pode ser desfeita.",
                                          textAlign: TextAlign.center,
                                          style: AppTextStyles.titleCategory
                                              .copyWith(
                                                  color:
                                                      AppColors.subtitleText)),
                                      SizedBox(height: 24),
                                      SizedBox(
                                        height: 40,
                                        child: ElevatedButtonWidget(
                                          color: AppColors.colorButtonWarning,
                                          text: 'EXCLUIR CONTA',
                                          onTap: () {
                                          
                                            Modular.to.navigate(
                                              AppRoutes.deleteAccountDetails);
                                          } 
                                        ),
                                      ),
                                      SizedBox(height: 30.5),
                                      Text(
                                        "CANCELAR",
                                        style: AppTextStyles.labelInputText
                                            .copyWith(
                                                color: AppColors.blueTitle),
                                      )
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Text(
                          "Excluir Conta",
                          style: AppTextStyles.labelInputText,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 90,
                  )
                ],
              ),
            ],
          ),
        ),
      );
  }

}
