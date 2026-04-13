import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/utils/helpers/size_config.dart';

class OnBoardingButtonWidget extends StatelessWidget {
  const OnBoardingButtonWidget({
    super.key,
    required this.width,
    this.color,
    required this.txt,
    required this.txtColor,
  });
  final double width;
  final Color? color;
  final Color txtColor;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: .center,
      padding: .symmetric(horizontal: SizeConfig.screenWidth * 0.05),
      height: SizeConfig.screenHeight * 0.05,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(txt, style: TextStyle(color: txtColor, fontSize: 18)),
    );
  }
}
