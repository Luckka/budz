

import 'package:budz/app/pages/delete_account_details_page.dart';
import 'package:budz/app/pages/edit_profile_page.dart';
import 'package:budz/app/pages/profile_page.dart';
import 'package:budz/app/routes/app_routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module{
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => super.binds;


  @override
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (context,args) => const ProfilePage()),
    ChildRoute(AppRoutes.editProfile, child: (context,args) => const EditProfilePage()),
    ChildRoute(AppRoutes.deleteAccountDetails, child: (context,args) => const DeleteAccountDetailsPage())
  ];
}