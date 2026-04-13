import 'package:flutter/material.dart';

class HomeCategoryModel {
  final String title;
  final String subTitle;
  final IconData icon;
  final Color color;

  HomeCategoryModel({
    required this.title,
    required this.icon,
    required this.subTitle,
    required this.color,
  });
}
