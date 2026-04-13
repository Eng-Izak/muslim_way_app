import 'package:flutter/material.dart';
import 'package:muslim_way_app/core/utils/helpers/size_config.dart';
import 'package:muslim_way_app/features/home/data/models/home_category_model.dart';
import 'package:muslim_way_app/features/home/ui/widgets/home_category_widget.dart';

class HomeMainSectionWidget extends StatelessWidget {
  const HomeMainSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<HomeCategoryModel> categories = [
      HomeCategoryModel(
        title: "المصحف الشريف",
        icon: Icons.book,
        subTitle: "قراءة القران الكريم",
        color: Colors.blue,
      ),
      HomeCategoryModel(
        title: "علوم القران",
        icon: Icons.favorite,
        subTitle: "تعلم القران من تجويد وتفسير",
        color: Colors.orange,
      ),
      HomeCategoryModel(
        title: "الاحاديث النبوية",
        icon: Icons.mosque,
        subTitle: "قراءة الأحاديث النبوية الشريفة",
        color: Colors.green,
      ),
      HomeCategoryModel(
        title: "الأدعيةوالاذكار ",
        icon: Icons.favorite,
        subTitle: "أدعية واذكار من السنة النبوية",
        color: Colors.orange,
      ),
      HomeCategoryModel(
        title: "الاذان",
        icon: Icons.favorite,
        subTitle: "مواقيت الصلاة في مدينتك",
        color: Colors.orange,
      ),
      HomeCategoryModel(
        title: "الأدعيةوالاذكار ",
        icon: Icons.favorite,
        subTitle: "أدعية واذكار من السنة النبوية",
        color: Colors.orange,
      ),
      HomeCategoryModel(
        title: "تنبيهات الاوراد",
        icon: Icons.favorite,
        subTitle: "تنبيهات لأورادك اليومية من القران والاذكار العامة",
        color: Colors.orange,
      ),
      HomeCategoryModel(
        title: "المسبحة",
        icon: Icons.favorite,
        subTitle: "عداد لتسبيح",
        color: Colors.orange,
      ),
      HomeCategoryModel(
        title: "المساجد",
        icon: Icons.favorite,
        subTitle: "حدد المساجد القريبة منك ",
        color: Colors.orange,
      ),
      HomeCategoryModel(
        title: "القبلة",
        icon: Icons.favorite,
        subTitle: "تحديد اتجاه القبلة من موقعك",
        color: Colors.orange,
      ),
    ];
    return Container(
      padding: .only(top: SizeConfig.screenHeight * .23),
      alignment: .center,
      margin: .only(top: SizeConfig.screenHeight * .35),
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: GridView.builder(
        padding: const EdgeInsets.all(10),
        // تحديد عدد الأعمدة وشكل التوزيع
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عدد الأعمدة (مثلاً 2 للأجهزة الصغيرة)
          mainAxisSpacing: 10, // المسافة الرأسية بين العناصر
          crossAxisSpacing: 10, // المسافة الأفقية بين العناصر
          childAspectRatio: 1.0, // نسبة الطول إلى العرض (1.0 تعني مربع)
        ),
        itemCount: categories.length, // عدد العناصر الإجمالي
        itemBuilder: (context, index) {
          return HomeCategoryWidget(
            title: categories[index].title,
            subTitle: categories[index].subTitle,
            icon: categories[index].icon,
            color: categories[index].color,
          );
        },
      ),
    );
  }
}
