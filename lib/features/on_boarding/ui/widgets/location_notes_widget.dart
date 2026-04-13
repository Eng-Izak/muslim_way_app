import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/theming/theming_colors.dart';
import 'package:muslim_way_app/core/utils/helpers/size_config.dart';

class LocationNotesWidget extends StatelessWidget {
  const LocationNotesWidget({
    super.key,
    required this.mainTxt,
    required this.subTxt,
    required this.icon,
  });
  final String mainTxt;
  final String subTxt;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: .symmetric(horizontal: 10),
      padding: .symmetric(horizontal: 5),
      height: SizeConfig.screenHeight * 0.1,
      width: SizeConfig.screenWidth * 0.8,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: .center,
        children: [
          Spacer(),
          Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "$mainTxt  ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("$subTxt  ", style: TextStyle(color: Colors.black54)),
            ],
          ),
          Icon(icon, size: 30, color: ThemingColors.sixthColor),
        ],
      ),
    );
  }
}
