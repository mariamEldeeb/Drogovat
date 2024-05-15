import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drogovat/features/drugs/presentation/manager/drugs_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/drug_model.dart';

class DrugsCubit extends Cubit<DrugsStates>{
  DrugsCubit() : super(DrugsInitialState());

  static DrugsCubit get(context) => BlocProvider.of(context);
}