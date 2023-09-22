import 'package:budz/app/modules/delete_account_details_module/bloc/delete_profile_bloc.dart';
import 'package:budz/app/modules/delete_account_details_module/pages/delete_account_details_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DeleteAccountDetailsModule extends Module{
  @override
  
  List<Bind> get binds => [
    Bind.lazySingleton((i) => DeleteProfileBloc())
  ];

  @override
 
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (context,args) => DeleteAccountDetailsPage(bloc: Modular.get<DeleteProfileBloc>()))
  ];
}