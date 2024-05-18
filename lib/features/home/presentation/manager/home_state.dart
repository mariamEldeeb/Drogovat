abstract class HomeStates {}

class HomeInitialState extends HomeStates {}

class ChangeIndexState extends HomeStates {}

class ChangeHeightUnitState extends HomeStates {}

class ChangeWeightUnitState extends HomeStates {}

class CreatePatientSuccessState extends HomeStates {}

class GetAllPatientsSuccessState extends HomeStates {}

class GetAllPatientsErrorState extends HomeStates {
  final String errorMessage;

  GetAllPatientsErrorState(this.errorMessage);
}

class CreatePatientErrorState extends HomeStates {
  final String errorMessage;

  CreatePatientErrorState(this.errorMessage);
}
