abstract class SettingsStates {}

class SettingsInitialState extends SettingsStates {}

class SendEmailSuccessState extends SettingsStates {}

class SendEmailErrorState extends SettingsStates {
  final String errorMesg;

  SendEmailErrorState(this.errorMesg);
}
