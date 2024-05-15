abstract class HomeStates {}

class HomeInitialState extends HomeStates {}

class ChangeIndexState extends HomeStates {}

class ChangeHeightUnitState extends HomeStates {}

class ChangeWeightUnitState extends HomeStates {}

class CreatePatientSuccessState extends HomeStates {}

class CreatePatientErrorState extends HomeStates {
  final String errorMessage;

  CreatePatientErrorState(this.errorMessage);
}
