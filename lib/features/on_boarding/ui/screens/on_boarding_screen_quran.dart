import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/theming/theming_colors.dart';
import 'package:muslim_way_app/core/utils/helpers/size_config.dart';
import 'package:muslim_way_app/features/on_boarding/ui/screens/on_boarding_screen_hadith.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_button_widget.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_divider_widget.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_explanatory_text_widget.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_logo_widget.dart';

class OnBoardingScreenQuran extends StatelessWidget {
  const OnBoardingScreenQuran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemingColors.background,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OnBoardingLogoWidget(
                logoColor: ThemingColors.fourthColor,
                icon: Icons.menu_book_rounded,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              OnBoardingExplanatoryTextWidget(
                screenTitle: 'القرآن الكريم',
                screenDescription: "اقرأ القران الكريم بخط واضح وتصميم جميل",
                subScreenDescription:
                    ' مع إمكانية الاستماع إليه بصوت أشهر القراء',
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              OnBoardingDividerWidget(
                thickness: 10,
                endAndStart: SizeConfig.screenWidth * 0.4,
                color: ThemingColors.fourthColor,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.25),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OnBoardingScreenHadith(),
                    ),
                  );
                },
                child: OnBoardingButtonWidget(
                  width: SizeConfig.screenWidth * 0.27,
                  color: ThemingColors.fourthColor,
                  txt: 'التالي',
                  txtColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
