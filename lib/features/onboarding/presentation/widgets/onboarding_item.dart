import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:doc_appointment_app/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingItem extends StatefulWidget {
  const OnboardingItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onNextPressed,
    required this.onSkipPressed,
  });
  final String image;
  final String title;
  final String subtitle;
  final VoidCallback onNextPressed;
  final VoidCallback onSkipPressed;

  @override
  State<OnboardingItem> createState() => _OnboardingItemState();
}

class _OnboardingItemState extends State<OnboardingItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        Container(
          width: 390.w,
          height: 532.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.image),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          widget.title,
          style: AppTextStyles.bold18,
        ),
        Text(
          widget.subtitle,
          style: AppTextStyles.regular14,
          textAlign: TextAlign.center,
        ),
        CustomElevatedButton(
          text: 'Next',
          onPressed: widget.onNextPressed,
        ),
        SizedBox(height: 40.h),
        TextButton(
          onPressed: widget.onSkipPressed,
          child: const Text(
            'Skip',
            style: AppTextStyles.regular14,
          ),
        ),
      ],
    );
  }
}
