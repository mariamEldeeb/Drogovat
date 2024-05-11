import 'package:drogovat/features/init_page/presentation/manager/init_page_cubit.dart';
import 'package:drogovat/features/init_page/presentation/manager/init_page_state.dart';
import 'package:drogovat/features/init_page/presentation/views/widgets/my_navigation_rail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitPageView extends StatelessWidget {
  const InitPageView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = InitPageCubit.get(context);

    return SafeArea(
      child: BlocBuilder<InitPageCubit, InitPageStates>(
        builder: (context, state) {
          return Scaffold(
            body: Row(
              children: [
                const MyNavigationRail(),
                const SizedBox(width: 20),
                Expanded(child: cubit.screens[cubit.selectedIndex]),
              ],
            ),
          );
        },
      ),
    );
  }
}


/*
* import 'package:cloud_firestore/cloud_firestore.dart';

// Define a class to represent a Doctor
class Doctor {
  final String id;
  final String name;
  final String specialty;
  final String email;

  Doctor({
    required this.id,
    required this.name,
    required this.specialty,
    required this.email,
  });

  // Convert a Doctor object to a Map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'specialty': specialty,
      'email': email,
    };
  }
}

// Define a class to represent a Patient
class Patient {
  final String id;
  final String name;
  final String condition;

  Patient({
    required this.id,
    required this.name,
    required this.condition,
  });

  // Convert a Patient object to a Map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'condition': condition,
    };
  }
}

// Define a service class to interact with Firebase
class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Add a new doctor to the 'doctors' collection
  Future<void> addDoctor(Doctor doctor) async {
    await _firestore.collection('doctors').doc(doctor.id).set(doctor.toMap());
  }

  // Add a new patient to the 'patients' subcollection under a doctor
  Future<void> addPatient(String doctorId, Patient patient) async {
    await _firestore
        .collection('doctors')
        .doc(doctorId)
        .collection('patients')
        .doc(patient.id)
        .set(patient.toMap());
  }

  // Get all patients associated with a specific doctor
  Stream<List<Patient>> getPatientsForDoctor(String doctorId) {
    return _firestore
        .collection('doctors')
        .doc(doctorId)
        .collection('patients')
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Patient(
                  id: doc.id,
                  name: doc['name'],
                  condition: doc['condition'],
                ))
            .toList());
  }
}
*
*
* */