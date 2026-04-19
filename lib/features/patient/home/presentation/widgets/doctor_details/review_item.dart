import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10.h,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                'https://img.freepik.com/free-photo/lifestyle-beauty-fashion-people-emotions-concept-young-optimistic-confident-businesswoman-with-fringe-smiling-looking-happy-success-reach-goal-standing-white-background_176420-53396.jpg',
              ),
            ),
            SizedBox(width: 12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Emily Anderson',
                  style: AppTextStyles.bold16,
                ),
                Row(
                  children: [
                    Text(
                      '5.0',
                      style: AppTextStyles.regular12.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Row(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          size: 16.sp,
                          color: AppColors.yellowColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Text(
          'Dr. Patel is a true professional who genuinely cares about his patients. I highly recommend Dr. Patel to anyone seeking cardiology care.',
          style: AppTextStyles.regular14.copyWith(
            color: AppColors.greyColor,
          ),
        ),
      ],
    );
  }
}
