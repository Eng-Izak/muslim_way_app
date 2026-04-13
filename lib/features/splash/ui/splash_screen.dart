import 'dart:async';

import 'package:flutter/material.dart';
import 'package:muslim_way_app/features/on_boarding/ui/screens/on_boarding_select_language.dart';
import 'package:muslim_way_app/features/splash/ui/widgets/custom_background_widget.dart';
import 'package:muslim_way_app/features/splash/ui/widgets/quote_text_widget.dart';
import 'package:muslim_way_app/features/splash/ui/widgets/splash_divider_widget.dart';
import 'package:muslim_way_app/features/splash/ui/widgets/splash_logo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  void _startDelay() {
    Timer(Duration(seconds: 10), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => OnBoardingSelectLanguage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomBackgroundWidget(),
          Center(
            child: Column(
              mainAxisAlignment: .center,
              children: [
                SplashLogoWidget(),
                SplashDividerWidget(),
                QuoteTextWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
