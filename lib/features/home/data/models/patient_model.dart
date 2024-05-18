class PatientModel {
  int? pId;
  String? patientName;
  String? height;
  String? weight;
  String? age;
  String? gender;
  String? heartState;
  String? hypertension;
  String? diabetes;
  String? typeOfOp;
  String? periodOfOp;
  String? drugId;
  // String? heartRate;
  // String? bloodPressure;
  // String? rasRate;
  // String? OxygenSaturation;
  // String? endTidalCarbon;
  // String? temp;
  // String? Electrocardiogram;

  PatientModel({
    this.pId,
    this.patientName,
    this.height,
    this.weight,
    this.age,
    this.gender,
    this.heartState,
    this.hypertension,
    this.diabetes,
    this.typeOfOp,
    this.periodOfOp,
    this.drugId,
  }
      // this.drug,
      // this.heartRate,
      // this.bloodPressure,
      // this.rasRate,
      // this.OxygenSaturation,
      // this.endTidalCarbon,
      // this.temp,
      // this.Electrocardiogram,
      );

  PatientModel.fromJson(Map<String, dynamic> json) {
    pId = json['pId'];
    patientName = json['patientName'];
    height = json['height'];
    weight = json['weight'];
    age = json['age'];
    gender = json['gender'];
    heartState = json['heartState'];
    hypertension = json['hypertension'];
    diabetes = json['diabetes'];
    typeOfOp = json['typeOfOp'];
    periodOfOp = json['periodOfOp'];
    drugId = json['drugId'];
    // heartRate = json['heartRate'];
    // bloodPressure = json['bloodPressure'];
    // rasRate = json['rasRate'];
    // OxygenSaturation = json['OxygenSaturation'];
    // endTidalCarbon = json['endTidalCarbon'];
    // temp = json['temp'];
    // Electrocardiogram = json['Electrocardiogram'];
  }

  Map<String, dynamic> toMap() {
    return {
      'pId': pId,
      'patientName': patientName,
      'height': height,
      'weight': weight,
      'age': age,
      'gender': gender,
      'heartState': heartState,
      'hypertension': hypertension,
      'diabetes': diabetes,
      'typeOfOp': typeOfOp,
      'periodOfOp': periodOfOp,
      'drugId': drugId,
      // 'heartRate': heartRate,
      // 'bloodPressure': bloodPressure,
      // 'rasRate': rasRate,
      // 'OxygenSaturation': OxygenSaturation,
      // 'endTidalCarbon': endTidalCarbon,
      // 'temp': temp,
      // 'Electrocardiogram': Electrocardiogram,
    };
  }
}
