import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoleCardWidget extends StatelessWidget {
  const RoleCardWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 140.w,
        height: 140.h,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryColor : AppColors.whiteColor,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: isSelected
                ? AppColors.primaryColor
                : AppColors.lightGreyColor,
            width: 1.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40.sp,
              color: isSelected ? AppColors.whiteColor : AppColors.primaryColor,
            ),
            SizedBox(height: 10.h),
            Text(
              label,
              style: AppTextStyles.semiBold14.copyWith(
                color: isSelected
                    ? AppColors.whiteColor
                    : AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
