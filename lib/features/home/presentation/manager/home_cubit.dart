import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drogovat/core/cache_helper.dart';
import 'package:drogovat/core/utils/constants.dart';
import 'package:drogovat/features/home/data/models/patient_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  PatientModel? patientModel;

  String? selectedGender = '';
  String? selectedHeartState = '';
  String? selectedHypertension = '';
  String? selectedDiabetes = '';
  String? selectedOpType = '';

  var nameController = TextEditingController();
  var heightController = TextEditingController();
  var weightController = TextEditingController();
  var ageController = TextEditingController();
  var opDuration = '';

  String selectedHour = '00';
  String selectedMinute = '00';

  void dispose() {
    nameController.dispose();
    heightController.dispose();
    weightController.dispose();
    ageController.dispose();
  }

  void createPatient({
    required int pId,
    required String patientName,
    required String height,
    required String weight,
    required String age,
    required String gender,
    required String heartState,
    required String hypertension,
    required String diabetes,
    required String typeOfOp,
    required String periodOfOp,
    required String drugId,
    String heartRate = '',
    String bloodPressure = '',
    String rasRate = '',
    String oxSaturation = '',
    String electrocardiogram = '',
    String endTidalCarbon = '',
    String temp = '',
  }) {
    PatientModel pModel = PatientModel(
      pId: pId,
      patientName: patientName,
      height: height,
      weight: weight,
      age: age,
      gender: gender,
      heartState: heartState,
      hypertension: hypertension,
      diabetes: diabetes,
      typeOfOp: typeOfOp,
      periodOfOp: periodOfOp,
      drugId: drugId,
      heartRate: heartRate,
      bloodPressure: bloodPressure,
      rasRate: rasRate,
      oxSaturation: oxSaturation,
      electrocardiogram: electrocardiogram,
      endTidalCarbon: endTidalCarbon,
      temp: temp,
    );

    FirebaseFirestore.instance
        .collection(patientCollection)
        .doc(pId.toString())
        .set(pModel.toMap())
        .then((value) {
      CacheHelper.saveData(key: 'pId', value: pId);
      emit(CreatePatientSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(CreatePatientErrorState(error.toString()));
    });
  }

  // void getPatientData() {
  //   emit(GetPatientDataLoadingState());
  //
  //   FirebaseFirestore.instance
  //       .collection(patientCollection)
  //       .doc(globalPatientId)
  //       .get()
  //       .then((value) {
  //     patientModel = PatientModel.fromJson(value.data()!);
  //     emit(GetPatientDataSuccessState());
  //   }).catchError((error) {
  //     print(error.toString());
  //     emit(GetPatientDataErrorState(error));
  //   });
  // }

  List<PatientModel> patients = [];
  void getAllPatients() {
    FirebaseFirestore.instance
        .collection(patientCollection)
        .get()
        .then((value) {
      value.docs.forEach((element) {
        patients.add(PatientModel.fromJson(element.data()));
      });
      emit(GetAllPatientsSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetAllPatientsErrorState(error.toString()));
    });
  }

  void updatePatientWithVitals({
    required String heartRate,
    required String bloodPressure,
    required String rasRate,
    required String oxSaturation,
    required String electrocardiogram,
    required String endTidalCarbon,
    required String temp,
  }) {
    FirebaseFirestore.instance
        .collection(patientCollection)
        .doc('${globalPatientId}')
        .update({
      'heartRate': heartRate,
      'bloodPressure': bloodPressure,
      'rasRate': rasRate,
      'oxSaturation': oxSaturation,
      'endTidalCarbon': endTidalCarbon,
      'temp': temp,
      'electrocardiogram': electrocardiogram,
    }).then((value) {
      emit(UpdatePatientWithVitalsSuccessState());
    }).catchError((error) {
      print(error);
      emit((UpdatePatientWithVitalsErrorState()));
    });
  }
}
