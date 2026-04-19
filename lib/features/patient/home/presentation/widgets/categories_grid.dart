import 'package:doc_appointment_app/assets.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:doc_appointment_app/features/patient/home/data/model/category_model.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/screens/category_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CategoriesGrid extends StatefulWidget {
  const CategoriesGrid({super.key});

  @override
  State<CategoriesGrid> createState() => _CategoriesGridState();
}

class _CategoriesGridState extends State<CategoriesGrid> {
  final List<CategoryModel> categories = [
    CategoryModel(name: 'General', image: Assets.images.general_png),
    CategoryModel(name: 'Dentistry', image: Assets.images.dentistry_png),
    CategoryModel(name: 'Cardiology', image: Assets.images.cardio_png),
    CategoryModel(name: 'Pulmonology', image: Assets.images.pulmono_png),
    CategoryModel(name: 'Neurology', image: Assets.images.neorology_png),
    CategoryModel(name: 'Gastroenterology', image: Assets.images.gastreon_png),
    CategoryModel(name: 'Laboratory', image: Assets.images.lap_png),
    CategoryModel(name: 'Vaccination', image: Assets.images.vassinat_png),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 15.h,
          crossAxisSpacing: 20.w,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              GoRouter.of(context).push(CategoryScreen.routeName);
            },
            child: Column(
              spacing: 5.h,
              children: [
                Image.asset(categories[index].image),
                Text(
                  categories[index].name,
                  style: AppTextStyles.bold12,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
