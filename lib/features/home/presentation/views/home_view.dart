import 'package:drogovat/core/functions/show_custom_dialog.dart';
import 'package:drogovat/features/home/presentation/manager/home_cubit.dart';
import 'package:drogovat/features/home/presentation/manager/home_state.dart';
import 'package:drogovat/features/home/presentation/views/widgets/home_view_widgets/build_confirm_dialog.dart';
import 'package:drogovat/features/home/presentation/views/widgets/home_view_widgets/ques_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/widgets/custom_filled_btn.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
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
                  hintText: '000',
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
                  hintText: '000',
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
                          fillColor: MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
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
                          fillColor: MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
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
                          fillColor: MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
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
                          fillColor: MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
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
                          fillColor: MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
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
                          fillColor: MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
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
                          fillColor: MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
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
                          fillColor: MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
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
                  label: 'Full  /  Half',
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
                            'Full',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: darkBlueColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          fillColor: MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
                                return darkBlueColor;
                              }
                              return Colors.black45;
                            },
                          ),
                          value: 'full',
                          groupValue: cubit.selectedOpType,
                          onChanged: (val) {
                            setState(() {
                              cubit.selectedOpType = val;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: RadioListTile(
                          title: Text(
                            'Half',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: darkBlueColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          fillColor: MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
                                return darkBlueColor;
                              }
                              return Colors.black45;
                            },
                          ),
                          value: 'half',
                          groupValue: cubit.selectedOpType,
                          onChanged: (val) {
                            setState(() {
                              cubit.selectedOpType = val;
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
                  keyboardType: TextInputType.number,
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
      },
    );
  }
}
