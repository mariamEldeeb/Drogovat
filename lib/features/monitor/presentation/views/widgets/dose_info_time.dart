import 'package:flutter/material.dart';

import 'digital_number_container.dart';

class DoseInfoTime extends StatelessWidget {
  const DoseInfoTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Next potion at: ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            DigitalNumberContainer(),
          ],
        ),
        const SizedBox(height: 15,),
        Row(
          children: [
            const Text(
              'Amount of dose: ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 30,),
            RichText(
              text: const TextSpan(
                text: '25 ',
                style: TextStyle(
                  fontSize: 50,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'ml',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
