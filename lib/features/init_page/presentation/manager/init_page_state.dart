abstract class InitPageStates {}

class InitPageInitialState extends InitPageStates {}

class ChangePageIndexState extends InitPageStates {}

class GetAllDrugsSuccessState extends InitPageStates {}

class GetAllDrugsErrorState extends InitPageStates {
  final String errorMessage;

  GetAllDrugsErrorState(this.errorMessage);
}