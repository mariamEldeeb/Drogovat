import 'package:drogovat/device_info.dart';
import 'package:drogovat/features/init_page/presentation/views/init_page_view.dart';
import 'package:drogovat/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToNextScreen();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            logoName,
            width: DeviceInfo.isTablet
                ? MediaQuery.of(context).size.width / 2.5
                : MediaQuery.of(context).size.width / 1.5,
            height: DeviceInfo.isTablet
                ? MediaQuery.of(context).size.height / 6
                : null,
          ),
          const SizedBox(height: 10),
          SlidingText(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 6), end: const Offset(0, 0))
            .animate(animationController);

    animationController.forward();
  }

  void navigateToNextScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(
        const InitPageView(),
        transition: Transition.fadeIn,
        duration: const Duration(milliseconds: 1000),
      );
    });
  }
}
