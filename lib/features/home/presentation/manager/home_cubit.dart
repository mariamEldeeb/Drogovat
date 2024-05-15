import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drogovat/features/home/data/models/patient_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  String? selectedGender = '';
  String? selectedHeartState = '';
  String? selectedHypertension = '';
  String? selectedDiabetes = '';
  String? selectedOpType = '';

  var heightController = TextEditingController();
  var weightController = TextEditingController();
  var ageController = TextEditingController();
  var opDuration = '';

  String selectedHour = '00';
  String selectedMinute = '00';

  String selectedHeightUnit = '';
  void changeHeightUnit(String value) {
    selectedHeightUnit = value;
    print(selectedHeightUnit);
    emit(ChangeHeightUnitState());
  }

  String selectedWeightUnit = '';
  void changeWeightUnit(String value) {
    selectedWeightUnit = value;
    print(selectedWeightUnit);
    emit(ChangeWeightUnitState());
  }

  void createPatient({
    required String pId,
    required String height,
    required String weight,
    required String age,
    required String gender,
    required String heartState,
    required String hypertension,
    required String diabetes,
    required String typeOfOp,
    required String periodOfOp,
  }) {
    PatientModel pModel = PatientModel(
      pId: pId,
      height: height,
      weight: weight,
      age: age,
      gender: gender,
      heartState: heartState,
      hypertension: hypertension,
      diabetes: diabetes,
      typeOfOp: typeOfOp,
      periodOfOp: periodOfOp,
    );

    FirebaseFirestore.instance
        .collection('patients')
        .doc(pId)
        .set(pModel.toMap())
        .then((value) {
      emit(CreatePatientSuccessState());
    })
        .catchError((error) {
      print(error.toString());
      emit(CreatePatientErrorState(error.toString()));
    });
  }

  void onDispose() {
    heightController.dispose();
    weightController.dispose();
    ageController.dispose();
  }
}
