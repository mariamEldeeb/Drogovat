import 'package:drogovat/core/widgets/custom_filled_btn.dart';
import 'package:drogovat/core/widgets/custom_mobile_app_bar.dart';
import 'package:drogovat/features/home/presentation/views/mobile_widgets/mobile_ques_item.dart';
import 'package:flutter/material.dart';

import '../../../../core/functions/show_custom_dialog.dart';
import '../../../../core/functions/show_sncak_bar.dart';
import '../../../../core/utils/colors.dart';
import '../manager/home_cubit.dart';
import 'mobile_widgets/mobile_confirm_dialog.dart';

class HomeMobileLayout extends StatefulWidget {
  const HomeMobileLayout({super.key});

  @override
  State<HomeMobileLayout> createState() => _HomeMobileLayoutState();
}

class _HomeMobileLayoutState extends State<HomeMobileLayout> {
  late HomeCubit homeCubit;

  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);
    var homeFormKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomMobileAppBar(title: 'Patient Data', isBack: false),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(top: 5, left: 17, right: 15, bottom: 20),
          child: Form(
            key: homeFormKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                //  Name
                MobileQuesItem(
                  label: 'Name',
                  isRadio: false,
                  isTime: false,
                  hintText: 'Enter patient name',
                  controller: cubit.nameController,
                  inputType: TextInputType.text,
                ),
                // op Name
                MobileQuesItem(
                  label: 'Operation Name',
                  isRadio: false,
                  isTime: false,
                  hintText: 'Enter the operation',
                  controller: cubit.opNameController,
                  inputType: TextInputType.text,
                ),
                // height
                MobileQuesItem(
                  label: 'Height',
                  isRadio: false,
                  isTime: false,
                  hintText: 'Ex: 165 cm',
                  controller: cubit.heightController,
                  inputType: TextInputType.number,
                ),
                //  weight
                MobileQuesItem(
                  label: 'Weight',
                  isRadio: false,
                  isTime: false,
                  hintText: 'Ex: 65 Kg',
                  controller: cubit.weightController,
                  inputType: TextInputType.number,
                ),
                //  age
                MobileQuesItem(
                  label: 'Age',
                  isRadio: false,
                  isTime: false,
                  hintText: 'Ex: 20 Years old',
                  controller: cubit.ageController,
                  inputType: TextInputType.number,
                ),
                //   gender
                MobileQuesItem(
                  label: 'Gender',
                  isRadio: true,
                  isTime: false,
                  radio: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 160,
                        child: RadioListTile(
                          title: Text(
                            'Male',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: darkBlueColor,
                              fontSize: 18,
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
                        width: 160,
                        child: RadioListTile(
                          title: Text(
                            'Female',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: darkBlueColor,
                              fontSize: 18,
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
                //  heart state
                MobileQuesItem(
                  label: 'Heart State',
                  isRadio: true,
                  isTime: false,
                  radio: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 170,
                        child: RadioListTile(
                          title: Text(
                            'Stable',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: darkBlueColor,
                              fontSize: 18,
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
                        width: 170,
                        child: RadioListTile(
                          title: Text(
                            'UnStable',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: darkBlueColor,
                              fontSize: 18,
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
                //  Hypertension
                MobileQuesItem(
                  label: 'Hypertension',
                  isRadio: true,
                  isTime: false,
                  radio: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 160,
                        child: RadioListTile(
                          title: Text(
                            'Yes',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: darkBlueColor,
                              fontSize: 18,
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
                        width: 160,
                        child: RadioListTile(
                          title: Text(
                            'No',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: darkBlueColor,
                              fontSize: 18,
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
                //  Diabetes
                MobileQuesItem(
                  label: 'Diabetes',
                  isRadio: true,
                  isTime: false,
                  radio: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 160,
                        child: RadioListTile(
                          title: Text(
                            'Yes',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: darkBlueColor,
                              fontSize: 18,
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
                        width: 160,
                        child: RadioListTile(
                          title: Text(
                            'No',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: darkBlueColor,
                              fontSize: 18,
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
                //  period of operation
                MobileQuesItem(
                  label: 'Period of operation',
                  isRadio: false,
                  isTime: true,
                ),
                CustomFilledButton(
                  text: 'Next',
                  width: 155,
                  height: 50,
                  textColor: Colors.white,
                  onTap: () {
                    if (homeFormKey.currentState!.validate() &&
                        cubit.selectedGender!.isNotEmpty &&
                        cubit.selectedHeartState!.isNotEmpty &&
                        cubit.selectedHypertension!.isNotEmpty &&
                        cubit.selectedDiabetes!.isNotEmpty &&
                        cubit.opDuration.isNotEmpty) {
                      showCustomDialog(
                        context: context,
                        barrierColor: Color(0xff7E7D7D).withOpacity(0.7),
                        child: MobileConfirmDialog(),
                      );
                    } else {
                      showSnackBar(
                          text: 'You must answer all questions', title: '');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    homeCubit.dispose();
    homeCubit.clearControllers();
    super.dispose();
  }
}
