import 'package:drogovat/core/functions/show_custom_dialog.dart';
import 'package:drogovat/core/widgets/custom_outline_btn.dart';
import 'package:drogovat/features/home/presentation/manager/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../../../core/utils/colors.dart';
import '../../../manager/home_cubit.dart';
import 'build_list_wheel_item.dart';

class ShowTimeWheel extends StatefulWidget {
  const ShowTimeWheel({super.key});

  @override
  State<ShowTimeWheel> createState() => _ShowTimeWheelState();
}

class _ShowTimeWheelState extends State<ShowTimeWheel> {
  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);

    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            showCustomDialog(
              context: context,
              barrierColor: dialogBarrierColor,
              child: Container(
                height: 400,
                width: 550,
                padding: EdgeInsets.only(right: 15,bottom: 15),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Center(
                        child: Container(
                          height: 65,
                          width: MediaQuery.of(context).size.width / 1.1,
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 70,
                          child: ListWheelScrollView.useDelegate(
                            itemExtent: 50,
                            perspective: 0.004,
                            diameterRatio: 1.2,
                            physics: FixedExtentScrollPhysics(),
                            useMagnifier: true,
                            magnification: 1.3,
                            childDelegate: ListWheelChildBuilderDelegate(
                              childCount: 13,
                              builder: (context, index) {
                                return BuildListWheelItem(
                                    text: index.toString());
                              },
                            ),
                            onSelectedItemChanged: (index) {
                              setState(() {
                                cubit.selectedHour = index.toString();
                                print(cubit.selectedHour);
                              });
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 9,
                                height: 9,
                                decoration: BoxDecoration(
                                    color: darkBlueColor,
                                    shape: BoxShape.circle),
                              ),
                              SizedBox(height: 5),
                              Container(
                                width: 9,
                                height: 9,
                                decoration: BoxDecoration(
                                    color: darkBlueColor,
                                    shape: BoxShape.circle),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          child: ListWheelScrollView.useDelegate(
                            itemExtent: 50,
                            perspective: 0.004,
                            diameterRatio: 1.2,
                            physics: FixedExtentScrollPhysics(),
                            useMagnifier: true,
                            magnification: 1.3,
                            childDelegate: ListWheelChildBuilderDelegate(
                              childCount: 60,
                              builder: (context, index) {
                                return BuildListWheelItem(
                                  text: index < 10
                                      ? '0' + index.toString()
                                      : index.toString(),
                                );
                              },
                            ),
                            onSelectedItemChanged: (index) {
                              setState(() {
                                cubit.selectedMinute = index.toString();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: CustomOutlineButton(
                        text: 'Done',
                        onTap: (){
                          cubit.opDuration =
                          '${cubit.selectedHour} : ${cubit.selectedMinute}';
                          Get.back();
                          print(cubit.opDuration);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          child: Container(
            height: MediaQuery.of(context).size.height / 11,
            width: MediaQuery.of(context).size.width / 1.4,
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: textFormFiledColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              '${cubit.selectedHour} : ${cubit.selectedMinute}',
              style: TextStyle(
                color: darkBlueColor,
                fontSize: 25,
              ),
            ),
          ),
        );
      },
    );
  }
}
