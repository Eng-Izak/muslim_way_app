import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/theming/theming_colors.dart';
import 'package:muslim_way_app/features/home/ui/widgets/home_main_section_widget.dart';
import 'package:muslim_way_app/features/home/ui/widgets/home_top_bar_widget.dart';
import 'package:muslim_way_app/features/home/ui/widgets/next_pray_widget.dart';
import 'package:muslim_way_app/features/home/ui/widgets/quran_and_hadith_quote_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemingColors.fourthColor,
      body: Stack(
        children: [
          HomeMainSectionWidget(),
          HomeTopBarWidget(),
          NextPrayWidget(),
          QuranAndHadithQuoteWidget(),
        ],
      ),
    );
  }
}
