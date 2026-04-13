import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/theming/theming_colors.dart';
import 'package:muslim_way_app/features/splash/ui/widgets/Custom_circle_widget.dart';

class CustomBackgroundWidget extends StatelessWidget {
  const CustomBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: ThemingColors.fourthColor,
        ),
        Positioned(
          top: 50,
          left: 50,
          child: CustomCircleWidget(radius: 70, thickness: 5),
        ),
        Center(child: CustomCircleWidget(radius: 120, thickness: 5)),
        Positioned(
          bottom: 50,
          right: 50,
          child: CustomCircleWidget(radius: 70, thickness: 5),
        ),
      ],
    );
  }
}
