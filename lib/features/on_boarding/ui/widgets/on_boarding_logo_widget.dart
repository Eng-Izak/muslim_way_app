import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/utils/helpers/size_config.dart';

class OnBoardingLogoWidget extends StatelessWidget {
  const OnBoardingLogoWidget({
    super.key,
    required this.logoColor,
    required this.icon,
  });
  final Color logoColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenWidth * .3,
      width: SizeConfig.screenWidth * .3,

      decoration: BoxDecoration(
        border: Border.all(color: Colors.white.withAlpha(50), width: 5),
        color: logoColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(icon, color: Colors.white, size: 70),
    );
  }
}
