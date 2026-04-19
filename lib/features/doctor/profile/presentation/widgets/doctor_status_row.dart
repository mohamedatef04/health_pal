import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorStatusRow extends StatelessWidget {
  const DoctorStatusRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _StatusChip(
          text: 'ACTIVE STATUS',
          icon: Icons.check_circle,
          backgroundColor: const Color(0xFFE8F5E9),
          textColor: Colors.green.shade800,
        ),
        SizedBox(width: 12.w),
        _StatusChip(
          text: 'IN CLINIC',
          icon: Icons.access_time,
          backgroundColor: const Color(0xFFE3F2FD),
          textColor: Colors.blue.shade800,
        ),
      ],
    );
  }
}

class _StatusChip extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color backgroundColor;
  final Color textColor;

  const _StatusChip({
    required this.text,
    required this.icon,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: textColor, size: 16.sp),
          SizedBox(width: 8.w),
          Text(
            text,
            style: AppTextStyles.bold12.copyWith(
              color: textColor,
              fontSize: 13.sp,
            ),
          ),
        ],
      ),
    );
  }
}
