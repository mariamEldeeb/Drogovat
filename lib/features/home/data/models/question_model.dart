class QuestionModel {
  String inputText;
  String? hintText;
  bool? isRadio;
  bool? isUpDown;
  bool? isHeight;
  bool? isWeight;
  String? radio1, radio2;

  QuestionModel({
    required this.inputText,
    this.hintText,
    this.isUpDown,
    this.isHeight,
    this.isWeight,
    required this.isRadio,
    this.radio1,
    this.radio2,
  });
}

List<QuestionModel> ques = [
  QuestionModel(
    inputText: 'Height',
    hintText: '000',
    isHeight: true,
    isUpDown: true,
    isRadio: false,
  ),
  QuestionModel(
    inputText: 'Weight',
    hintText: '000',
    isWeight: true,
    isUpDown: true,
    isRadio: false,
  ),
  QuestionModel(
    inputText: 'Age',
    isUpDown: true,
    isRadio: false,
  ),
  QuestionModel(
    inputText: 'Gender',
    isRadio: true,
    radio1: 'Male',
    radio2: 'Female',
  ),
  QuestionModel(
    inputText: 'Heart State',
    isRadio: true,
    radio1: 'Stable',
    radio2: 'UnStable',
  ),
  QuestionModel(
    inputText: 'Hypertension',
    isRadio: true,
    radio1: 'Yes',
    radio2: 'No',
  ),
  QuestionModel(
    inputText: 'Diabetes',
    isRadio: true,
    radio1: 'Yes',
    radio2: 'No',
  ),
  QuestionModel(
    inputText: 'Period of operation',
    hintText: '00 : 00',
    isRadio: false,
  ),
];
