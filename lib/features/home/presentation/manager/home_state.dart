abstract class HomeStates {}

class HomeInitialState extends HomeStates {}

class ChangeIndexState extends HomeStates {}

class CreatePatientSuccessState extends HomeStates {}

class GetPatientDataLoadingState extends HomeStates {}

class GetPatientDataSuccessState extends HomeStates {}

class GetPatientDataErrorState extends HomeStates {
  final String errorMessage;

  GetPatientDataErrorState(this.errorMessage);
}

class GetAllPatientsSuccessState extends HomeStates {}

class GetAllPatientsErrorState extends HomeStates {
  final String errorMessage;

  GetAllPatientsErrorState(this.errorMessage);
}

class CreatePatientErrorState extends HomeStates {
  final String errorMessage;

  CreatePatientErrorState(this.errorMessage);
}

class UpdatePatientWithVitalsSuccessState extends HomeStates {}

class UpdatePatientWithVitalsErrorState extends HomeStates {
  final String errorMessage;

  UpdatePatientWithVitalsErrorState(this.errorMessage);
}

class UpdatePatientStatusSuccessState extends HomeStates {}

class UpdatePatientStatusErrorState extends HomeStates {
  final String errorMessage;

  UpdatePatientStatusErrorState(this.errorMessage);
}
