class DeleteProfileState{

  DeleteProfileState init(){
    return DeleteProfileState();
  }

  DeleteProfileState clone(){
    return DeleteProfileState();
  }
}

class LoadingDeleteState extends DeleteProfileState{}

class SwitchRadioState extends DeleteProfileState{}
