import 'package:budz/app/modules/delete_account_details_module/bloc/delete_profile_bloc.dart';
import 'package:budz/app/modules/delete_account_details_module/bloc/delete_profile_event.dart';
import 'package:budz/app/modules/delete_account_details_module/bloc/delete_profile_state.dart';
import 'package:budz/app/routes/app_routes.dart';
import 'package:budz/app/theme/app_colors.dart';
import 'package:budz/app/theme/app_text_styles.dart';
import 'package:budz/app/widget/elevated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DeleteAccountDetailsPage extends StatefulWidget {
  final DeleteProfileBloc bloc;

  const DeleteAccountDetailsPage({super.key, required this.bloc});

  @override
  State<DeleteAccountDetailsPage> createState() =>
      _DeleteAccountDetailsPageState();
}

class _DeleteAccountDetailsPageState extends State<DeleteAccountDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => widget.bloc..add(InitialEvent()),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  List<String> options = [
    'Eu não uso mais Budz',
    'Valores das assinaturas',
    'Insatisfação com os serviços oferecidos',
    'Tive problemas técnicos',
    'Conteúdos ruins ou irrelevantes',
    'Experiência e usabilidade',
    'Outro'
  ];

  Widget _buildPage(BuildContext context) {
    final bloc = BlocProvider.of<DeleteProfileBloc>(context);

    String currentOption = options[0];

    return BlocBuilder<DeleteProfileBloc, DeleteProfileState>(
        builder: (context, state) {
      return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Conta pra gente, qual o motivo da exclusão?",
                    style: AppTextStyles.titleLarge,
                  ),
                  SizedBox(height: 24),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: AppColors.border)),
                    child: RadioListTile(
                        title: Text("Eu não uso mais Budz"),
                        value: options[0],
                        groupValue: currentOption,
                        onChanged: (value) {
                          currentOption = value.toString();
            
                          bloc.emit(SwitchRadioState());
                        }),
                  ),
                  SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: AppColors.border)),
                    child: RadioListTile(
                        title: Text("Valores das assinaturas"),
                        value: options[1],
                        groupValue: currentOption,
                        onChanged: (value) {
                          currentOption = value.toString();
            
                          bloc.emit(SwitchRadioState());
                        }),
                  ),
                  SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: AppColors.border)),
                    child: RadioListTile(
                        title: Text("Insatisfação com os serviços oferecidos"),
                        value: options[2],
                        groupValue: currentOption,
                        onChanged: (value) {
                          currentOption = value.toString();
            
                          bloc.emit(SwitchRadioState());
                        }),
                  ),
                  SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: AppColors.border)),
                    child: RadioListTile(
                        title: Text("Tive problemas técnicos"),
                        value: options[3],
                        groupValue: currentOption,
                        onChanged: (value) {
                          currentOption = value.toString();
            
                          bloc.emit(SwitchRadioState());
                        }),
                  ),
                  SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: AppColors.border)),
                    child: RadioListTile(
                        title: Text("Conteúdos ruins ou irrelevantes"),
                        value: options[4],
                        groupValue: currentOption,
                        onChanged: (value) {
                          currentOption = value.toString();
            
                          bloc.emit(SwitchRadioState());
                        }),
                  ),
                  SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: AppColors.border)),
                    child: RadioListTile(
                        title: Text("Experiência e usabilidade"),
                        value: options[5],
                        groupValue: currentOption,
                        onChanged: (value) {
                          currentOption = value.toString();
            
                          bloc.emit(SwitchRadioState());
                        }),
                  ),
                  SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: AppColors.border)),
                    child: RadioListTile(
                        title: Text("Outro"),
                        value: options[6],
                        groupValue: currentOption,
                        onChanged: (value) {
                          currentOption = value.toString();
            
                          bloc.emit(SwitchRadioState());
                        }),
                  ),

                  SizedBox(height: 65),
            
                  ElevatedButtonWidget(color: AppColors.blueTitle, text: "Continuar",onTap: () {

                    Modular.to.navigate(AppRoutes.deleteAccountFinished);
                    
                  },)
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
