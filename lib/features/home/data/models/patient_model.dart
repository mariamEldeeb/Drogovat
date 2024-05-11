// import 'package:drogovat/features/drugs/data/models/drug_model.dart';

class PatientModel {
  String? pId;
  String? height;
  String? weight;
  String? age;
  String? gender;
  String? heartState;
  String? hypertension;
  String? diabetes;
  String? typeOfOp;
  String? periodOfOp;
  // DrugModel? drug;
  // String? heartRate;
  // String? bloodPressure;
  // String? rasRate;
  // String? OxygenSaturation;
  // String? endTidalCarbon;
  // String? temp;
  // String? Electrocardiogram;

  PatientModel({
    this.pId,
    this.height,
    this.weight,
    this.age,
    this.gender,
    this.heartState,
    this.hypertension,
    this.diabetes,
    this.typeOfOp,
    this.periodOfOp,
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
    height = json['height'];
    weight = json['weight'];
    age = json['age'];
    gender = json['gender'];
    heartState = json['heartState'];
    hypertension = json['hypertension'];
    diabetes = json['diabetes'];
    typeOfOp = json['typeOfOp'];
    periodOfOp = json['periodOfOp'];
    // drug = json['drug'];
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
      'height': height,
      'weight': weight,
      'age': age,
      'gender': gender,
      'heartState': heartState,
      'hypertension': hypertension,
      'diabetes': diabetes,
      'typeOfOp': typeOfOp,
      'periodOfOp': periodOfOp,
      // 'drug': drug,
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
