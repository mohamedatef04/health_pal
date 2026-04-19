import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactInfoCard extends StatelessWidget {
  const ContactInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(32.r),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.r),
          topRight: Radius.circular(50.r),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withValues(alpha: 0.05),
            blurRadius: 40,
            offset: const Offset(0, -10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  'Contact Information',
                  style: AppTextStyles.bold18.copyWith(
                    fontSize: 24.sp,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              Expanded(
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: AppColors.blueColor,
                    size: 18.sp,
                  ),
                  label: Text(
                    'Edit Profile',
                    style: AppTextStyles.bold14.copyWith(
                      color: AppColors.blueColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 32.h),
          const ContactFieldItem(
            label: 'PRIMARY PHONE',
            value: '+1 234 567 890',
            icon: Icons.phone_outlined,
          ),
          SizedBox(height: 24.h),
          const ContactFieldItem(
            label: 'PROFESSIONAL EMAIL',
            value: 'sarah.m@clinic.com',
            icon: Icons.email_outlined,
          ),
          SizedBox(height: 24.h),
          const ContactFieldItem(
            label: 'WORKING HOURS',
            value: 'Mon - Fri • 9:00 AM - 5:00 PM',
            icon: Icons.calendar_today_outlined,
          ),
          SizedBox(height: 48.h),
        ],
      ),
    );
  }
}

class ContactFieldItem extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;

  const ContactFieldItem({
    required this.label,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.bold12.copyWith(
            color: AppColors.lightGreyColor,
            letterSpacing: 0.8,
          ),
        ),
        SizedBox(height: 12.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
          decoration: BoxDecoration(
            color: const Color(0xFFF1F5F9), // Very light grey
            borderRadius: BorderRadius.circular(24.r),
          ),
          child: Row(
            children: [
              Icon(icon, color: AppColors.blueColor, size: 22.sp),
              SizedBox(width: 16.w),
              Text(
                value,
                style: AppTextStyles.semiBold16.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
