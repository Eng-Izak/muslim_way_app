import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/theming/theming_colors.dart';
import 'package:muslim_way_app/core/utils/helpers/size_config.dart';

class HomeCategoryWidget extends StatelessWidget {
  const HomeCategoryWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.color,
  });
  final String title;
  final String subTitle;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      children: [
        Container(
          height: SizeConfig.screenWidth * .25,
          width: SizeConfig.screenWidth * .25,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Icon(icon, size: 50, color: ThemingColors.background),
        ),
        Text(title, style: TextStyle(fontSize: 20, color: Colors.black)),
        Text(
          textAlign: .center,
          subTitle,
          style: TextStyle(fontSize: 16, color: Colors.blueGrey),
        ),
      ],
    );
  }
}
