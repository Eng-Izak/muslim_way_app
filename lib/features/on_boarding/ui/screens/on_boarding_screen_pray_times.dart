import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/theming/theming_colors.dart';
import 'package:muslim_way_app/core/utils/helpers/size_config.dart';
import 'package:muslim_way_app/features/home/ui/home_screen.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_button_widget.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_divider_widget.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_explanatory_text_widget.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_logo_widget.dart';

class OnBoardingScreenPrayTimes extends StatelessWidget {
  const OnBoardingScreenPrayTimes({super.key});

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
                logoColor: ThemingColors.secondColor,
                icon: Icons.share_arrival_time_outlined,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              OnBoardingExplanatoryTextWidget(
                screenTitle: 'مواقيت الصلاة',
                screenDescription: "تابع مواقيت الصلاة بدقة عالية ",
                subScreenDescription:
                    ' مع إمكانية الاستمتاع بالاذآن باصوات مختلفة ومميزة',
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              OnBoardingDividerWidget(
                thickness: 10,
                endAndStart: SizeConfig.screenWidth * 0.4,
                color: ThemingColors.secondColor,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.25),
              Row(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
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
            ],
          ),
        ),
      ),
    );
  }
}
