import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/theming/theming_colors.dart';
import 'package:muslim_way_app/core/utils/helpers/size_config.dart';
import 'package:muslim_way_app/features/on_boarding/ui/screens/on_boarding_screen_pray_times.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_button_widget.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_divider_widget.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_explanatory_text_widget.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_logo_widget.dart';

class OnBoardingScreenAzkarAdeia extends StatelessWidget {
  const OnBoardingScreenAzkarAdeia({super.key});

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
                logoColor: ThemingColors.thirdColor,
                icon: Icons.sticky_note_2_outlined,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              OnBoardingExplanatoryTextWidget(
                screenTitle: 'الأذكار والأدعية',
                screenDescription: "تابع الأذكار والأدعية اليومية بدقة عالية ",
                subScreenDescription:
                    ' مع إمكانية الاستماع إليها بصوت جميل ومميز',
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              OnBoardingDividerWidget(
                thickness: 10,
                endAndStart: SizeConfig.screenWidth * 0.4,
                color: ThemingColors.thirdColor,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.25),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OnBoardingScreenPrayTimes(),
                    ),
                  );
                },
                child: OnBoardingButtonWidget(
                  width: SizeConfig.screenWidth * 0.27,
                  color: ThemingColors.thirdColor,
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
