import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/theming/theming_colors.dart';
import 'package:muslim_way_app/core/utils/helpers/size_config.dart';
import 'package:muslim_way_app/features/on_boarding/data/models/location_notes_model.dart';
import 'package:muslim_way_app/features/on_boarding/ui/screens/on_boarding_screen_quran.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/location_notes_widget.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_button_widget.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_explanatory_text_widget.dart';
import 'package:muslim_way_app/features/on_boarding/ui/widgets/on_boarding_logo_widget.dart';

class OnBoardingDetectLocation extends StatelessWidget {
  const OnBoardingDetectLocation({super.key});

  @override
  Widget build(BuildContext context) {
    List<LocationNotesModel> languages = [
      LocationNotesModel(
        mainTxt: 'اوقات الصلاة الدقيقة',
        subTxt: 'حساب دقيق بناء على موقعك الجغرافي',
        icon: Icons.location_on,
      ),
      LocationNotesModel(
        mainTxt: 'المساجد القريبة',
        subTxt: 'اكتشف المساجد القريبة منك بسهولة',
        icon: Icons.sell_rounded,
      ),
      LocationNotesModel(
        mainTxt: 'خصوصية محمية',
        subTxt: 'بياناتك محمية وآمنة',
        icon: Icons.health_and_safety_outlined,
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
                logoColor: ThemingColors.sixthColor,
                icon: Icons.language_outlined,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),

              OnBoardingExplanatoryTextWidget(
                screenTitle: "تحديد الموقع",
                screenDescription: "يساعدنا تحديد موقعك في تقديم تجربة أفضل",
                subScreenDescription:
                    "لتحديد اوقات الصلاة بدقة واظهار المساجد القريبة منك",
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return LocationNotesWidget(
                    mainTxt: languages[index].mainTxt,
                    subTxt: languages[index].subTxt,
                    icon: languages[index].icon,
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
                      builder: (context) => OnBoardingScreenQuran(),
                    ),
                  );
                },
                child: OnBoardingButtonWidget(
                  width: SizeConfig.screenWidth * 0.8,
                  color: ThemingColors.sixthColor,
                  txt: 'السماح بتحديد الموقع',
                  txtColor: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OnBoardingScreenQuran(),
                    ),
                  );
                },
                child: OnBoardingButtonWidget(
                  width: SizeConfig.screenWidth * 0.8,
                  txt: "تخطى",
                  txtColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
