import 'package:drogovat/features/home/presentation/views/tab_widgets/home_view_widgets/build_confirm_dialog.dart';
import 'package:drogovat/features/home/presentation/views/tab_widgets/home_view_widgets/ques_item.dart';
import 'package:flutter/material.dart';

import '../../../../core/functions/show_custom_dialog.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/widgets/custom_filled_btn.dart';
import '../manager/home_cubit.dart';

class HomeTabLayout extends StatefulWidget {
  const HomeTabLayout({super.key});

  @override
  State<HomeTabLayout> createState() => _HomeTabLayoutState();
}

class _HomeTabLayoutState extends State<HomeTabLayout> {
  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 23, bottom: 29),
        child: Column(
          children: [
            QuestionItem(
              label: 'Name',
              isWeight: false,
              isHeight: false,
              isRadio: false,
              hintText: 'Enter patient name',
              controller: cubit.nameController,
              keyboardType: TextInputType.text,
              isTime: false,
            ),
            const SizedBox(height: 10),
            QuestionItem(
              label: 'Height',
              isWeight: false,
              isHeight: true,
              isRadio: false,
              hintText: 'Note: height in cm',
              controller: cubit.heightController,
              keyboardType: TextInputType.number,
              isTime: false,
            ),
            const SizedBox(height: 10),
            QuestionItem(
              label: 'Weight',
              isWeight: true,
              isHeight: false,
              isRadio: false,
              hintText: 'Note: weight in kg',
              controller: cubit.weightController,
              keyboardType: TextInputType.number,
              isTime: false,
            ),
            const SizedBox(height: 10),
            QuestionItem(
              label: 'Age',
              isWeight: false,
              isHeight: false,
              isRadio: false,
              hintText: '00',
              controller: cubit.ageController,
              keyboardType: TextInputType.number,
              isTime: false,
            ),
            const SizedBox(height: 10),
            QuestionItem(
              label: 'Gender',
              isWeight: false,
              isHeight: false,
              isRadio: true,
              isTime: false,
              radio: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 200,
                    child: RadioListTile(
                      title: Text(
                        'Male',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: darkBlueColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      fillColor: WidgetStateColor.resolveWith(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return darkBlueColor;
                          }
                          return Colors.black45;
                        },
                      ),
                      value: 'male',
                      groupValue: cubit.selectedGender,
                      onChanged: (val) {
                        setState(() {
                          cubit.selectedGender = val;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: RadioListTile(
                      title: Text(
                        'Female',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: darkBlueColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      fillColor: WidgetStateColor.resolveWith(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return darkBlueColor;
                          }
                          return Colors.black45;
                        },
                      ),
                      value: 'female',
                      groupValue: cubit.selectedGender,
                      onChanged: (val) {
                        setState(() {
                          cubit.selectedGender = val;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            QuestionItem(
              label: 'Heart State',
              isWeight: false,
              isHeight: false,
              isRadio: true,
              isTime: false,
              radio: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 200,
                    child: RadioListTile(
                      title: Text(
                        'Stable',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: darkBlueColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      fillColor: WidgetStateColor.resolveWith(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return darkBlueColor;
                          }
                          return Colors.black45;
                        },
                      ),
                      value: 'stable',
                      groupValue: cubit.selectedHeartState,
                      onChanged: (val) {
                        setState(() {
                          cubit.selectedHeartState = val;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: RadioListTile(
                      title: Text(
                        'Unstable',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: darkBlueColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      fillColor: WidgetStateColor.resolveWith(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return darkBlueColor;
                          }
                          return Colors.black45;
                        },
                      ),
                      value: 'unstable',
                      groupValue: cubit.selectedHeartState,
                      onChanged: (val) {
                        setState(() {
                          cubit.selectedHeartState = val;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            QuestionItem(
              label: 'Hypertension',
              isWeight: false,
              isHeight: false,
              isRadio: true,
              isTime: false,
              radio: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 200,
                    child: RadioListTile(
                      title: Text(
                        'Yes',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: darkBlueColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      fillColor: WidgetStateColor.resolveWith(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return darkBlueColor;
                          }
                          return Colors.black45;
                        },
                      ),
                      value: 'yes',
                      groupValue: cubit.selectedHypertension,
                      onChanged: (val) {
                        setState(() {
                          cubit.selectedHypertension = val;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: RadioListTile(
                      title: Text(
                        'No',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: darkBlueColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      fillColor: WidgetStateColor.resolveWith(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return darkBlueColor;
                          }
                          return Colors.black45;
                        },
                      ),
                      value: 'no',
                      groupValue: cubit.selectedHypertension,
                      onChanged: (val) {
                        setState(() {
                          cubit.selectedHypertension = val;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            QuestionItem(
              label: 'Diabetes',
              isWeight: false,
              isHeight: false,
              isRadio: true,
              isTime: false,
              radio: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 200,
                    child: RadioListTile(
                      title: Text(
                        'Yes',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: darkBlueColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      fillColor: WidgetStateColor.resolveWith(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return darkBlueColor;
                          }
                          return Colors.black45;
                        },
                      ),
                      value: 'yes',
                      groupValue: cubit.selectedDiabetes,
                      onChanged: (val) {
                        setState(() {
                          cubit.selectedDiabetes = val;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: RadioListTile(
                      title: Text(
                        'No',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: darkBlueColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      fillColor: WidgetStateColor.resolveWith(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return darkBlueColor;
                          }
                          return Colors.black45;
                        },
                      ),
                      value: 'no',
                      groupValue: cubit.selectedDiabetes,
                      onChanged: (val) {
                        setState(() {
                          cubit.selectedDiabetes = val;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            QuestionItem(
              label: 'Period of operation',
              isWeight: false,
              isHeight: false,
              isRadio: false,
              isTime: true,
            ),
            const SizedBox(height: 20),
            CustomFilledButton(
              text: 'Next',
              width: 178,
              height: 52,
              textColor: Colors.white,
              onTap: () {
                showCustomDialog(
                  context: context,
                  barrierColor: Color(0xff7E7D7D).withOpacity(0.7),
                  child: buildConfirmDialog(context),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    var cubit = HomeCubit.get(context);
    cubit.nameController.dispose();
    cubit.heightController.dispose();
    cubit.weightController.dispose();
    cubit.ageController.dispose();
    super.dispose();
  }
}
