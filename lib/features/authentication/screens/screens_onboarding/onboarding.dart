import 'package:luxfashion_app/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:luxfashion_app/features/authentication/screens/screens_onboarding/widgets/onBoarding_next_button.dart';
import 'package:luxfashion_app/features/authentication/screens/screens_onboarding/widgets/onboarding_navigation.dart';
import 'package:luxfashion_app/features/authentication/screens/screens_onboarding/widgets/onboarding_page.dart';
import 'package:luxfashion_app/features/authentication/screens/screens_onboarding/widgets/onboarding_skip.dart';
import 'package:luxfashion_app/utils/constants/image.dart';
import 'package:luxfashion_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          //horizontally scroll pages

          PageView(
            controller: controller.pageController,
            onPageChanged: controller.upadatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImage.logoApp,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImage.logoApp,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImage.logoApp,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //skip Button
          const onBoardingSkip(),

          //  Navigation SmoothPageIndicator
          const OnBoardingNavigation(),

          //Curcler Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
