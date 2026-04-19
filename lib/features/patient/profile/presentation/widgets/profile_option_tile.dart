import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileOptionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool hasChevron;
  final bool isLoading;

  const ProfileOptionTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.hasChevron = true,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return ListTile(
      leading: Icon(
        icon,
        color: AppColors.primaryColor,
        size: 24.sp,
      ),
      title: Text(
        title,
        style: AppTextStyles.regular16.copyWith(
          color: const Color(0xFF374151),
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: hasChevron
          ? Icon(
              Icons.chevron_right,
              color: const Color(0xFF9CA3AF),
              size: 20.sp,
            )
          : null,
      onTap: onTap,
    );
  }
}
