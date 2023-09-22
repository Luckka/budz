import 'dart:async';

import 'package:budz/app/routes/app_routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'delete_profile_event.dart';
import 'delete_profile_state.dart';

class DeleteProfileBloc extends Bloc<DeleteProfileEvent,DeleteProfileState>{
  DeleteProfileBloc() : super(DeleteProfileState().init()) {
    on<InitialEvent>(_init);
    on<LoadingDeleteAccountEvent>(_loginDeleteAccount);
  }
  

  void _init(InitialEvent event, Emitter<DeleteProfileState> emit) async{
    emit(state.clone());
  }

  Future<void> _loginDeleteAccount(LoadingDeleteAccountEvent event, Emitter<DeleteProfileState> emit) async{
    
    emit(LoadingDeleteState());

     
   Future.delayed(const Duration(seconds: 4),(){
      
    }).then((value) => Modular.to.navigate(AppRoutes.deleteAccountDetails));
   

  }
}