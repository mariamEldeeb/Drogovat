import 'dart:convert';

import 'package:drogovat/features/settings/presentation/manager/settings_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class SettingsCubit extends Cubit<SettingsStates> {
  SettingsCubit() : super(SettingsInitialState());

  static SettingsCubit get(context) => BlocProvider.of(context);

  Future sendEmail({
    required String email,
    required String name,
    required String message,
  }) async {
    final serviceId = 'service_f4k5p2j';
    final templateId = 'template_w6bcven';
    final userId = 'taolWoaZtMVV4HQ0C';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    try {
      final response = await http.post(
        url,
        headers: {
          'origin': 'http://localhost',
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'from_name': name,
            'user_email': email,
            'subject': 'Drogovat asking for something',
            'message': message,
          },
        }),
      );
      print(response.body);
      emit(SendEmailSuccessState());
    } catch (e) {
      print(e.toString());
      emit(SendEmailErrorState(e.toString()));
    }
  }
}
