import 'package:budz/app/modules/finished_delete_account_module/pages/finished_delete_account_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FinishedDeleteAccountModule extends Module{
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => super.binds;



  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (context,args) => const FinishedDeleteAccountPage())
  ];
}