import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/assets.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: SvgPicture.asset(
                splashBG,
                fit: BoxFit.fill,
              ),
            ),
            body,
          ],
        ),
      ),
    );
  }
}
