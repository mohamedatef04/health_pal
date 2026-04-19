import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/cubits/cubit/nav_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

class CustomPatientNavBar extends StatelessWidget {
  const CustomPatientNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      margin: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 20.h),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(30.r),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            spreadRadius: 2,
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: GNav(
        backgroundColor: Colors.transparent,
        tabMargin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
        tabBorderRadius: 20.r,
        curve: Curves.easeInOutExpo,
        duration: const Duration(milliseconds: 400),
        gap: 8,
        color: AppColors.lightGreyColor,
        activeColor: AppColors.whiteColor,
        tabBackgroundColor: AppColors.primaryColor,
        tabBackgroundGradient: const LinearGradient(
          colors: [
            AppColors.primaryColor,
            Color(0xFF4A688A),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        iconSize: 24,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        onTabChange: (value) {
          context.read<NavBarCubit>().changeIndex(value);
        },
        tabs: const [
          GButton(
            icon: Icons.home_outlined,
          ),
          GButton(
            icon: Icons.calendar_month_outlined,
          ),
          GButton(
            icon: Icons.favorite_border,
          ),
          GButton(
            icon: Icons.person_outline,
          ),
        ],
      ),
    );
  }
}
