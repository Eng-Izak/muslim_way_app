import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/theming/theming_colors.dart';
import 'package:muslim_way_app/core/utils/helpers/size_config.dart';
import 'package:muslim_way_app/features/on_boarding/data/models/language_model.dart';
import 'package:muslim_way_app/features/on_boarding/ui/screens/on_boarding_detect_location.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/language_widget.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_button_widget.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_explanatory_text_widget.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_logo_widget.dart';

class OnBoardingSelectLanguage extends StatelessWidget {
  const OnBoardingSelectLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    List<LanguageModel> languages = [
      LanguageModel(
        englishName: 'English',
        arabicName: 'الانجليزية',
        imagePath: 'assets/images/us.png',
      ),
      LanguageModel(
        englishName: 'Arabic',
        arabicName: 'العربية',
        imagePath: 'assets/images/ar.png',
      ),
      LanguageModel(
        englishName: 'Franch',
        arabicName: 'الفرنسية',
        imagePath: 'assets/images/fr.png',
      ),
    ];
    return Scaffold(
      backgroundColor: ThemingColors.background,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OnBoardingLogoWidget(
                logoColor: ThemingColors.fifthColor,
                icon: Icons.language_outlined,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),

              OnBoardingExplanatoryTextWidget(
                screenTitle: 'Language اللغة',
                screenDescription: "اختر اللغة التي تفضلها لتجربة أفضل",
                subScreenDescription: "Select Your Preferred Language",
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return LanguageWidget(
                    englishName: languages[index].englishName,
                    arabicName: languages[index].arabicName,
                    imagePath: languages[index].imagePath,
                  );
                },
                separatorBuilder: (context, index) =>
                    SizedBox(height: SizeConfig.screenHeight * 0.02),
                itemCount: languages.length,
              ),
              // LanguageWidget(englishName: '', arabicName: '', imagePath: '',),
              SizedBox(height: SizeConfig.screenHeight * 0.1),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OnBoardingDetectLocation(),
                    ),
                  );
                },
                child: OnBoardingButtonWidget(
                  width: SizeConfig.screenWidth * 0.8,
                  color: ThemingColors.fifthColor,
                  txt: 'Continue      متابعة',
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
