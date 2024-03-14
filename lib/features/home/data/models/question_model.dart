class InputModel {
  String inputText;
  String? hintText;
  bool? isRadio;
  bool? isUpDown;
  bool? isHeight;
  bool? isWeight;
  String? radio1, radio2;

  InputModel({
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

List<InputModel> inputs = [
  InputModel(
    inputText: 'Height',
    hintText: '000',
    isHeight: true,
    isUpDown: true,
    isRadio: false,
  ),
  InputModel(
    inputText: 'Weight',
    hintText: '000',
    isWeight: true,
    isUpDown: true,
    isRadio: false,
  ),
  InputModel(
    inputText: 'Age',
    isUpDown: true,
    isRadio: false,
  ),
  InputModel(
    inputText: 'Gender',
    isRadio: true,
    radio1: 'Male',
    radio2: 'Female',
  ),
  InputModel(
    inputText: 'Heart State',
    isRadio: true,
    radio1: 'Stable',
    radio2: 'UnStable',
  ),
  InputModel(
    inputText: 'Hypertension',
    isRadio: true,
    radio1: 'Yes',
    radio2: 'No',
  ),
  InputModel(
    inputText: 'Diabetes',
    isRadio: true,
    radio1: 'Yes',
    radio2: 'No',
  ),
  InputModel(
    inputText: 'Full / Half',
    isRadio: true,
    radio1: 'Full',
    radio2: 'Half',
  ),
  InputModel(
    inputText: 'Period of operation',
    hintText: '00 : 00',
    isRadio: false,
  ),
];
