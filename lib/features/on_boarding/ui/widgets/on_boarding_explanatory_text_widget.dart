import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/utils/helpers/size_config.dart';

class OnBoardingExplanatoryTextWidget extends StatelessWidget {
  const OnBoardingExplanatoryTextWidget({
    super.key,
    required this.screenTitle,
    required this.screenDescription,
    required this.subScreenDescription,
  });
  final String screenTitle;
  final String screenDescription;
  final String subScreenDescription;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          screenTitle,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.02),

        Text(screenDescription, style: TextStyle(fontSize: 20)),
        Text(subScreenDescription, style: TextStyle(fontSize: 20)),
      ],
    );
  }
}
