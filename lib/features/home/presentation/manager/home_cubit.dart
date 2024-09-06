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
  var opNameController = TextEditingController();
  var heightController = TextEditingController();
  var weightController = TextEditingController();
  var ageController = TextEditingController();
  var opDuration = '';

  String selectedHour = '00';
  String selectedMinute = '00';

  void dispose() {
    nameController.dispose();
    opNameController.dispose();
    heightController.dispose();
    weightController.dispose();
    ageController.dispose();
  }

  void createPatient({
    required int pId,
    required String patientName,
    required String patientStatus,
    required String opName,
    required String height,
    required String weight,
    required String age,
    required String gender,
    required String heartState,
    required String hypertension,
    required String diabetes,
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
      opName: opName,
      patientStatus: patientStatus,
      height: height,
      weight: weight,
      age: age,
      gender: gender,
      heartState: heartState,
      hypertension: hypertension,
      diabetes: diabetes,
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
      globalPatientId = pId;
      emit(CreatePatientSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(CreatePatientErrorState(error.toString()));
    });
  }

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
    required String patientStatus,
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
        .doc('$globalPatientId')
        .update({
      'patientStatus': patientStatus,
      'heartRate': heartRate,
      'bloodPressure': bloodPressure,
      'rasRate': rasRate,
      'oxSaturation': oxSaturation,
      'endTidalCarbon': endTidalCarbon,
      'temp': temp,
      'electrocardiogram': electrocardiogram,
    }).then((value) {
      print('$globalPatientId');
      emit(UpdatePatientWithVitalsSuccessState());
    }).catchError((error) {
      print('$globalPatientId');
      print(error);
      emit((UpdatePatientWithVitalsErrorState(error.toString())));
    });
  }

  void updatePatientStatus({required String status}) {
    FirebaseFirestore.instance
        .collection(patientCollection)
        .doc('${patientModel!.pId}')
        .update({
      'status': status,
    }).then((value) {
      emit(UpdatePatientWithVitalsSuccessState());
    }).catchError((error) {
      print(error);
      emit((UpdatePatientWithVitalsErrorState(error.toString())));
    });
  }
}
