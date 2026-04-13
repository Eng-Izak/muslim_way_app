import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/theming/theming_colors.dart';
import 'package:muslim_way_app/core/utils/helpers/size_config.dart';

class SplashDividerWidget extends StatelessWidget {
  const SplashDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: ThemingColors.firstColor.withAlpha(100),
      thickness: 2,
      indent: SizeConfig.screenWidth * 0.3,
      endIndent: SizeConfig.screenWidth * 0.3,
    );
  }
}
