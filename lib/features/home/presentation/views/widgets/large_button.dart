import 'package:drogovat/features/home/presentation/manager/home_cubit.dart';
import 'package:drogovat/features/home/presentation/views/widgets/custom_dialog.dart';
import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  const LargeButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showDialog(context: context, builder: (context) => const CustomDialog());
      },
      child: Container(
        height: 60,
        width: 200,
        decoration: BoxDecoration (
          borderRadius:  BorderRadius.circular(5),
          gradient:  const LinearGradient (
            begin:  Alignment(0, -1),
            end:  Alignment(0, 1),
            colors:  <Color>[Color(0xff6ed93b), Color(0xff144907)],
            stops:  <double>[0, 1],
          ),
          boxShadow:  const [
            BoxShadow(
              color:  Color(0x3f000000),
              offset:  Offset(0, 4),
              blurRadius:  2,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
