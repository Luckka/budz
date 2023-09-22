import 'package:budz/app/modules/edit_profile_module/pages/edit_profile_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class EditProfileModule extends Module {
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => super.binds;



  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (args,context) => const EditProfilePage())
  ];
}