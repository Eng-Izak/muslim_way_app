import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/theming/theming_colors.dart';
import 'package:muslim_way_app/core/utils/helpers/size_config.dart';

class NextPrayWidget extends StatelessWidget {
  const NextPrayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        padding: .symmetric(horizontal: 15),
        alignment: .center,
        height: SizeConfig.screenHeight * .15,
        margin: .only(
          left: SizeConfig.screenWidth * .05,
          right: SizeConfig.screenWidth * .05,
          top: SizeConfig.screenHeight * .1,
        ),
        decoration: BoxDecoration(
          color: Color(0xffFFFFBE),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: ThemingColors.firstColor, width: 2),
        ),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: .max,
            children: [
              Icon(
                Icons.access_time_filled_sharp,
                size: 50,
                color: ThemingColors.firstColor,
              ),
              SizedBox(width: 5),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'الصلاة القادمة',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'صلاة الفجر',
                    style: TextStyle(fontSize: 28, color: Colors.black),
                  ),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'الوقت المتبقى',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '2h 30 m',
                    style: TextStyle(fontSize: 28, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
