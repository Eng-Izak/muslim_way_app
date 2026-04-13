import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/theming/theming_colors.dart';
import 'package:muslim_way_app/core/utils/helpers/size_config.dart';
import 'package:muslim_way_app/features/on_boarding/ui/screens/on_boarding_screen_azkar_adeia.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_button_widget.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_divider_widget.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_explanatory_text_widget.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_logo_widget.dart';

class OnBoardingScreenHadith extends StatelessWidget {
  const OnBoardingScreenHadith({super.key});

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
                logoColor: ThemingColors.firstColor,
                icon: Icons.book_rounded,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              OnBoardingExplanatoryTextWidget(
                screenTitle: 'الأحاديث النبوية',
                screenDescription: "اقرأ الأحاديث النبوية بخط واضح وتصميم جميل",
                subScreenDescription: ' مع إمكانية الاستماع إليها بشرح مبسط',
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              OnBoardingDividerWidget(
                thickness: 10,
                endAndStart: SizeConfig.screenWidth * 0.4,
                color: ThemingColors.firstColor,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.25),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OnBoardingScreenAzkarAdeia(),
                    ),
                  );
                },
                child: OnBoardingButtonWidget(
                  width: SizeConfig.screenWidth * 0.27,
                  color: ThemingColors.firstColor,
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
