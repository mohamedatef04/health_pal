import 'package:doc_appointment_app/assets.dart';
import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorHeader extends StatelessWidget {
  const DoctorHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 30.r,
              backgroundImage: AssetImage(Assets.images.doc_png),
            ),
            Positioned(
              bottom: 2.h,
              right: 2.w,
              child: Container(
                height: 12.h,
                width: 12.w,
                decoration: BoxDecoration(
                  color: AppColors.greenColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.whiteColor, width: 2.w),
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 12.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dr. Sarah Mitchell',
              style: AppTextStyles.bold18.copyWith(color: const Color(0xFF0D47A1)),
            ),
            Text(
              'PEDIATRICIAN',
              style: AppTextStyles.semiBold12.copyWith(color: AppColors.lightGreyColor),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_outlined, color: AppColors.blueColor),
        ),
      ],
    );
  }
}
