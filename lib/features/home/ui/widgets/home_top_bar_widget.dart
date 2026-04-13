import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/theming/theming_colors.dart';
import 'package:muslim_way_app/core/utils/helpers/size_config.dart';

class HomeTopBarWidget extends StatelessWidget {
  const HomeTopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: .only(
        top: SizeConfig.screenHeight * .05,
        left: SizeConfig.screenWidth * .05,
        right: SizeConfig.screenWidth * .05,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.settings, color: ThemingColors.background),
          Text(
            'Home Screen',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: ThemingColors.background,
            ),
          ),
          Icon(Icons.sunny, color: ThemingColors.background),
        ],
      ),
    );
  }
}
