import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/theming/theming_colors.dart';
import 'package:muslim_way_app/core/utils/helpers/size_config.dart';

class QuranAndHadithQuoteWidget extends StatelessWidget {
  const QuranAndHadithQuoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: SizeConfig.screenHeight * .28,
      left: 0,
      right: 0,

      child: Container(
        alignment: .center,
        height: SizeConfig.screenHeight * .3,
        margin: .symmetric(horizontal: SizeConfig.screenWidth * .05),
        decoration: BoxDecoration(
          color: Color(0xffFFFFBE),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: ThemingColors.firstColor, width: 2),
        ),
        child: Column(
          children: [
            Icon(Icons.stars, size: 50, color: ThemingColors.firstColor),
            Text("اقتباس اليوم من القران والسنة"),
            Divider(
              color: ThemingColors.firstColor,
              endIndent: SizeConfig.screenWidth * .35,
              indent: SizeConfig.screenWidth * .35,
            ),
            Text(
              " ﴾ وَقُل رَّبِّ زِدۡنِی عِلۡمࣰا ﴿",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "سورة طه - الآية 114",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Text("--------"),
            Text(
              textAlign: .center,
              " ﴾ بَلِّغوا عَنِّي ولو آيةً، وحَدِّثوا عن بَني إسرائيلَ ولا حَرَجَ، ومَن كَذَبَ عليَّ مُتَعَمِّدًا فليَتَبَوَّأْ مَقعَدَه مِنَ النَّارِ ﴿",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              " أخرجه البخاري (3461) ، من حديث عبدالله بن عمرو",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
