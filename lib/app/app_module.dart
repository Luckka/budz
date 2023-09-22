
import 'package:budz/app/modules/delete_account_details_module/delete_account_details_module.dart';
import 'package:budz/app/modules/delete_account_details_module/pages/delete_account_details_page.dart';
import 'package:budz/app/modules/edit_profile_module/edit_profile_module.dart';

import 'package:budz/app/modules/edit_profile_module/pages/edit_profile_page.dart';
import 'package:budz/app/modules/finished_delete_account_module/finished_delete_account_module.dart';
import 'package:budz/app/modules/finished_delete_account_module/pages/finished_delete_account_page.dart';
import 'package:budz/app/modules/profile_module/pages/profile_page.dart';
import 'package:budz/app/routes/app_routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/delete_account_details_module/bloc/delete_profile_bloc.dart';

class AppModule extends Module{
  @override
  List<Bind<Object>> get binds => [

  ];


  @override
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (context,args) => const ProfilePage()),
    ModuleRoute(AppRoutes.editProfile, module: EditProfileModule()),
    ModuleRoute(AppRoutes.deleteAccountDetails, module: DeleteAccountDetailsModule()),
    ModuleRoute(AppRoutes.deleteAccountFinished, module: FinishedDeleteAccountModule())
  ];
}