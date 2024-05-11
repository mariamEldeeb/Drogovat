import 'package:drogovat/core/utils/assets.dart';

class DrugModel {
  String? drugId;
  String? drugName;
  String? drugImage;
  String? drugLoadingDose;
  String? drugMaintenanceDose;
  String? drugActiveDuration;
  String? drugFullAmount;

  DrugModel({
    this.drugId,
    this.drugName,
    this.drugImage,
    this.drugLoadingDose,
    this.drugMaintenanceDose,
    this.drugActiveDuration,
    this.drugFullAmount,
  });

  DrugModel.fromJson(Map<String, dynamic> json) {
    drugId = json['drugId'];
    drugName = json['drugName'];
    drugImage = json['drugImage'];
    drugLoadingDose = json['drugLoadingDose'];
    drugMaintenanceDose = json['drugMaintenanceDose'];
    drugActiveDuration = json['drugActiveDuration'];
    drugFullAmount = json['drugFullAmount'];
  }

  Map<String, dynamic> toMap() {
    return {
      'drugId': drugId,
      'drugName': drugName,
      'drugImage': drugImage,
      'drugLoadingDose': drugLoadingDose,
      'drugMaintenanceDose': drugMaintenanceDose,
      'drugActiveDuration': drugActiveDuration,
      'drugFullAmount': drugFullAmount,
    };
  }
}

List<DrugModel> drugs = [
  DrugModel(
    drugId: '0101',
    drugName: 'Cetacaine',
    drugImage: Drug1Image,
    drugLoadingDose: '150 ml',
    drugMaintenanceDose: '25 ml',
    drugActiveDuration: '15 m',
    drugFullAmount: '200 ml',
  ),
  DrugModel(
    drugId: '0102',
    drugName: 'Isoflurane',
    drugImage: Drug2Image,
    drugLoadingDose: '100 ml',
    drugMaintenanceDose: '20 ml',
    drugActiveDuration: '10 m',
    drugFullAmount: '150 ml',
  ),
  DrugModel(
    drugId: '0103',
    drugName: 'Propofol',
    drugImage: Drug3Image,
    drugLoadingDose: '80 ml',
    drugMaintenanceDose: '10 ml',
    drugActiveDuration: '10 m',
    drugFullAmount: '150 ml',
  ),DrugModel(
    drugId: '0103',
    drugName: 'Propofol',
    drugImage: Drug3Image,
    drugLoadingDose: '80 ml',
    drugMaintenanceDose: '10 ml',
    drugActiveDuration: '10 m',
    drugFullAmount: '150 ml',
  ),DrugModel(
    drugId: '0103',
    drugName: 'Propofol',
    drugImage: Drug3Image,
    drugLoadingDose: '80 ml',
    drugMaintenanceDose: '10 ml',
    drugActiveDuration: '10 m',
    drugFullAmount: '150 ml',
  ),
];
