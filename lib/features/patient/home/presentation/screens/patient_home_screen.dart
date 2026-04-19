import 'package:doc_appointment_app/assets.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/widgets/categories_grid.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/widgets/clinics_list_view.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/widgets/custom_listtile.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/widgets/custom_search_widget.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientHomeScreen extends StatelessWidget {
  const PatientHomeScreen({super.key});
  static const String routeName = '/patient_home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  spacing: 10.h,
                  children: [
                    const CustomListTile(),
                    const CustomSearchWidget(),
                    Image.asset(Assets.images.banner_png),
                    const CustomTextWidget(text: "Categories"),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
            ),
            const CategoriesGrid(),
            SliverToBoxAdapter(child: SizedBox(height: 10.h)),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: const CustomTextWidget(text: "Nearby Medical Centers"),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 10.h)),
            const SliverToBoxAdapter(child: ClinicsListView()),
          ],
        ),
      ),
    );
  }
}
