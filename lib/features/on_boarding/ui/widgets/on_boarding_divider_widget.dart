import 'package:flutter/material.dart';

class OnBoardingDividerWidget extends StatelessWidget {
  const OnBoardingDividerWidget({
    super.key,
    required this.thickness,
    required this.endAndStart,
    required this.color,
  });
  final double thickness;
  final double endAndStart;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      thickness: thickness,
      indent: endAndStart,
      endIndent: endAndStart,
      radius: BorderRadiusGeometry.horizontal(
        end: Radius.circular(20),
        start: Radius.circular(20),
      ),
    );
  }
}
