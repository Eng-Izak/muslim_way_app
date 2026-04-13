import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/theming/theming_colors.dart';
import 'package:muslim_way_app/core/utils/helpers/size_config.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({
    super.key,
    required this.englishName,
    required this.arabicName,
    required this.imagePath,
  });
  final String englishName;
  final String arabicName;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: .symmetric(horizontal: 10),
      padding: .symmetric(horizontal: 5),
      height: SizeConfig.screenHeight * 0.1,
      width: SizeConfig.screenWidth * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: ThemingColors.fifthColor),
      ),
      child: Row(
        mainAxisAlignment: .center,
        children: [
          Icon(Icons.check_circle, color: ThemingColors.fifthColor, size: 30),
          Spacer(),
          Column(
            mainAxisAlignment: .center,
            children: [Text("$arabicName  "), Text("$englishName  ")],
          ),
          Image.asset(imagePath, width: 30, height: 30),
        ],
      ),
    );
  }
}
