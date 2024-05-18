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

  var nameController = TextEditingController();
  var heightController = TextEditingController();
  var weightController = TextEditingController();
  var ageController = TextEditingController();
  var opDuration = '';

  String selectedHour = '00';
  String selectedMinute = '00';

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
    );

    FirebaseFirestore.instance
        .collection('patients')
        .doc(pId.toString())
        .set(pModel.toMap())
        .then((value) {
      emit(CreatePatientSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(CreatePatientErrorState(error.toString()));
    });
  }

  List<PatientModel> patients = [];
  void getAllPatients() {
    if (patients.isEmpty) {
      FirebaseFirestore.instance.collection('patients').get().then((value) {
        value.docs.forEach((element) {
          patients.add(PatientModel.fromJson(element.data()));
        });
        emit(GetAllPatientsSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(GetAllPatientsErrorState(error.toString()));
      });
    }
  }

  void onDispose() {
    nameController.dispose();
    heightController.dispose();
    weightController.dispose();
    ageController.dispose();
  }
}
