import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 8.h),
      child: Row(
        children: [
          const Expanded(child: Divider()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: const Text('or', style: AppTextStyles.regular14),
          ),
          const Expanded(child: Divider()),
        ],
      ),
    );
  }
}
