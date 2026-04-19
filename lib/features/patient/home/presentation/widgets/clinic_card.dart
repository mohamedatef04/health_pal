import 'package:doc_appointment_app/assets.dart';
import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClinicCard extends StatelessWidget {
  const ClinicCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      color: AppColors.whiteColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            Assets.images.clinic_png,
            height: 121.h,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 15.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Sunrise Health Clinic",
                  style: AppTextStyles.bold18,
                ),
                SizedBox(height: 5.h),
                const Row(
                  children: [
                    Icon(Icons.location_on),
                    Text(
                      "123 Oak Street, CA 98765",
                      style: AppTextStyles.regular14,
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                const Row(
                  children: [
                    Text("Rating: ", style: AppTextStyles.regular14),
                    Text("4.5", style: AppTextStyles.regular14),
                    Icon(Icons.star, color: AppColors.amberColor),
                    Text("(120 reviews)", style: AppTextStyles.regular14),
                  ],
                ),
                SizedBox(height: 5.h),
                Divider(color: AppColors.greyColor, thickness: 1.h),
                SizedBox(height: 5.h),
                const Row(
                  children: [
                    Icon(Icons.calendar_today, color: AppColors.primaryColor),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        "Available: ",
                        style: AppTextStyles.regular14,
                      ),
                    ),
                    Text(
                      "Mon - Fri, 9am - 6pm",
                      style: AppTextStyles.regular14,
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
