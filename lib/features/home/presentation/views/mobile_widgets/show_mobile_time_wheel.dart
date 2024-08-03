import 'package:drogovat/core/functions/show_custom_dialog.dart';
import 'package:drogovat/features/home/presentation/manager/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../../../core/utils/colors.dart';
import '../../../../../core/widgets/custom_outline_btn.dart';
import '../../manager/home_cubit.dart';
import 'build_mobile_list_wheel_item.dart';

class ShowMobileTimeWheel extends StatefulWidget {
  const ShowMobileTimeWheel({super.key});

  @override
  State<ShowMobileTimeWheel> createState() => _ShowMobileTimeWheelState();
}

class _ShowMobileTimeWheelState extends State<ShowMobileTimeWheel> {
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
                height: 450,
                width: 560,
                padding: EdgeInsets.only(right: 15, bottom: 15),
                child: Stack(
                  children: [
                    //  highlighter
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Center(
                        child: Container(
                          height: 65,
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    //  time
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 70,
                          child: ListWheelScrollView.useDelegate(
                            itemExtent: 50,
                            perspective: 0.004,
                            diameterRatio: 3,
                            physics: FixedExtentScrollPhysics(),
                            useMagnifier: true,
                            magnification: 1.4,
                            onSelectedItemChanged: (index) {
                              setState(() {
                                cubit.selectedHour = index.toString();
                              });
                            },
                            childDelegate: ListWheelChildBuilderDelegate(
                              childCount: 13,
                              builder: (context, index) {
                                return BuildMobileListWheelItem(
                                  text: index.toString(),
                                );
                              },
                            ),
                          ),
                        ),
                        Text(
                          'hr',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 7,
                                height: 7,
                                decoration: BoxDecoration(
                                  color: darkBlueColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                width: 7,
                                height: 7,
                                decoration: BoxDecoration(
                                  color: darkBlueColor,
                                  shape: BoxShape.circle,
                                ),
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
                            magnification: 1.4,
                            childDelegate: ListWheelChildBuilderDelegate(
                              childCount: 2,
                              builder: (context, index) {
                                return BuildMobileListWheelItem(
                                  text: index == 0 ? '00' : '30',
                                  // index < 10
                                  //     ? '0' + index.toString()
                                  //     : index.toString(),
                                );
                              },
                            ),
                            onSelectedItemChanged: (index) {
                              setState(() {
                                cubit.selectedMinute = index == 0 ? '00' : '30';
                              });
                            },
                          ),
                        ), // Text(
                        Text(
                          'min',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    //  button
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: CustomOutlineButton(
                        text: 'Done',
                        onTap: () {
                          cubit.opDuration =
                              '${cubit.selectedHour} : ${cubit.selectedMinute}';
                          Get.back();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: textFormFiledColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                '${cubit.selectedHour} : ${cubit.selectedMinute}',
                style: TextStyle(
                  color: darkBlueColor,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
