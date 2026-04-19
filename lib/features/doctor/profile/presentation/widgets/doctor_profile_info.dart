import 'package:doc_appointment_app/assets.dart';
import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorProfileInfo extends StatelessWidget {
  const DoctorProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: 200.h,
              width: 200.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
                image: DecorationImage(
                  image: AssetImage(Assets.images.doc_png),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.blueColor.withValues(alpha: 0.1),
                    blurRadius: 30,
                    offset: const Offset(0, 15),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 10.w,
              bottom: 10.h,
              child: Container(
                padding: EdgeInsets.all(8.r),
                decoration: const BoxDecoration(
                  color: Color(0xFF0D47A1),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.check_circle_rounded, color: AppColors.whiteColor, size: 24.sp),
              ),
            ),
          ],
        ),
        SizedBox(height: 24.h),
        Text(
          'BOARD CERTIFIED PHYSICIAN',
          style: AppTextStyles.bold12.copyWith(
            color: AppColors.blueColor,
            letterSpacing: 1.0,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          'Dr. Sarah Mitchell',
          style: AppTextStyles.bold18.copyWith(
            fontSize: 32.sp,
            color: AppColors.primaryColor,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          'Senior Cardiologist & Internal Medicine',
          style: AppTextStyles.semiBold14.copyWith(
            color: AppColors.lightGreyColor,
          ),
        ),
      ],
    );
  }
}
