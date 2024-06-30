import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';

class MobileHowToUse extends StatelessWidget {
  const MobileHowToUse({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 20, right: 25, left: 25, bottom: 25),
          child: Column(
            children: [
              Image.asset(darkLogo),
              SizedBox(height: 30),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        'Let\'s take a look at how to use this app,\n\n1- Enter your patient data to help us determine the right drug and dose for him',
                        style: TextStyle(fontSize: 22),
                      ),
                      buildImageContainer(image: screenShot1),
                      Text(
                        'This section of entering the patient\'s data is period of operation, you need to enter how long the operation will take.\nIn this example, it takes 2:30 h',
                        style: TextStyle(fontSize: 22),
                      ),
                      buildImageContainer(image: screenShot2),
                      Text(
                        '2- Then you need to check for the data you entered to avoid any errors in determining the drug',
                        style: TextStyle(fontSize: 22),
                      ),
                      buildImageContainer(image: screenShot3),
                      Text(
                        'After that you will know the appropriate drug to put in the solution and its maintenance dose',
                        style: TextStyle(fontSize: 22),
                      ),
                      buildImageContainer(image: screenShot4),
                      Text(
                        '3- Monitor Screen will help you keep track of the patient\'s vital signs from one screen',
                        style: TextStyle(fontSize: 22),
                      ),
                      buildImageContainer(image: screenShot5),
                      Text(
                        'In case you want to check the available drugs, go to drugs screen',
                        style: TextStyle(fontSize: 22),
                      ),
                      buildImageContainer(image: screenShot6),
                      Text(
                        'If you want to know more about the drug tap on it',
                        style: TextStyle(fontSize: 22),
                      ),
                      buildImageContainer(image: screenShot7),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildImageContainer({required String image}) {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 2, color: darkBlueColor),
      ),
      child: Image.asset(image),
    );
  }
}
