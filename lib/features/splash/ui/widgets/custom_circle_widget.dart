import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/theming/theming_colors.dart';

class CustomCircleWidget extends StatelessWidget {
  const CustomCircleWidget({
    super.key,
    required this.radius,
    required this.thickness,
  });
  final double radius;
  final double thickness;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: ThemingColors.background.withAlpha(3),
      child: CircleAvatar(
        radius: radius - thickness,
        backgroundColor: ThemingColors.fourthColor.withAlpha(255),
      ),
    );
  }
}
