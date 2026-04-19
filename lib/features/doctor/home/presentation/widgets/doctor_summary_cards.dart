import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SummaryCard extends StatelessWidget {
  final String title;
  final String mainValue;
  final String subValue;
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final Color titleColor;
  final Color valueColor;
  final Color subValueColor;

  const SummaryCard({
    super.key,
    required this.title,
    required this.mainValue,
    required this.subValue,
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
    required this.titleColor,
    required this.valueColor,
    required this.subValueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.w,
      padding: EdgeInsets.all(20.r),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(24.r),
        boxShadow: elevationEffect(backgroundColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10.r),
            decoration: BoxDecoration(
              color: AppColors.whiteColor.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(icon, color: iconColor, size: 28.sp),
          ),
          SizedBox(height: 16.h),
          Text(
            title.toUpperCase(),
            style: AppTextStyles.semiBold12.copyWith(
              color: titleColor,
              letterSpacing: 1.2,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            mainValue,
            style: AppTextStyles.bold18.copyWith(
                fontSize: 32.sp, color: valueColor),
          ),
          SizedBox(height: 8.h),
          Text(
            subValue,
            style: AppTextStyles.semiBold12.copyWith(color: subValueColor),
          ),
        ],
      ),
    );
  }

  List<BoxShadow> elevationEffect(Color color) {
    return [
      BoxShadow(
        color: color.withValues(alpha: 0.2),
        blurRadius: 20,
        offset: const Offset(0, 10),
      ),
    ];
  }
}

class DoctorSummaryCards extends StatelessWidget {
  const DoctorSummaryCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SummaryCard(
          title: 'Appointments',
          mainValue: '12',
          subValue: 'Today\'s Schedule',
          icon: Icons.calendar_today_outlined,
          backgroundColor: AppColors.whiteColor,
          iconColor: Colors.blue.shade900,
          titleColor: AppColors.lightGreyColor,
          valueColor: AppColors.primaryColor,
          subValueColor: Colors.blue.shade800,
        ),
        SummaryCard(
          title: 'Tasks',
          mainValue: '3',
          subValue: 'Pending Review',
          icon: Icons.assignment_outlined,
          backgroundColor: const Color(0xFFE8F5E9),
          iconColor: Colors.green.shade800,
          titleColor: Colors.green.shade900.withValues(alpha: 0.6),
          valueColor: Colors.green.shade900,
          subValueColor: Colors.green.shade800,
        ),
      ],
    );
  }
}
