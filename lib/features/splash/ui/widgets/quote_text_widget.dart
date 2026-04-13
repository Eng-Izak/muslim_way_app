import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/theming/theming_colors.dart';

class QuoteTextWidget extends StatelessWidget {
  const QuoteTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          " ﴾ وَتَزَوَّدُوا فَإِنَّ خَيْرَ الزَّادِ التَّقْوَىٰ ﴿  ",
          style: TextStyle(
            color: ThemingColors.firstColor,
            fontSize: 22,
            fontStyle: FontStyle.italic,
          ),
        ),
        Text(
          " سورة البقرة آية ١٩٧ ",
          style: TextStyle(
            color: ThemingColors.background,
            fontSize: 22,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
