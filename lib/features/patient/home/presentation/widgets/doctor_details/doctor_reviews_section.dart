import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/widgets/doctor_details/review_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorReviewsSection extends StatelessWidget {
  const DoctorReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 15.h,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Reviews',
              style: AppTextStyles.semiBold20,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'See All',
                style: AppTextStyles.regular14.copyWith(
                  color: AppColors.greyColor,
                ),
              ),
            ),
          ],
        ),
        const ReviewItem(),
      ],
    );
  }
}
