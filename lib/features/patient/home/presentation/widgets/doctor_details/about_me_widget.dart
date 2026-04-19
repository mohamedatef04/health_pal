import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5.h,
      children: [
        const Text(
          'About me',
          style: AppTextStyles.semiBold20,
        ),
        RichText(
          text: TextSpan(
            style: AppTextStyles.regular14,
            children: [
              const TextSpan(
                text: 'Dr. David Patel, a dedicated cardiologist, brings a wealth of experience to Golden Gate Cardiology Center in Golden Gate, CA. ',
              ),
              TextSpan(
                text: 'view more',
                style: AppTextStyles.semiBold14.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
