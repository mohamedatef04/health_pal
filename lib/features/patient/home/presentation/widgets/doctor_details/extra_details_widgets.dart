import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ExtraDetailsWidgets extends StatelessWidget {
  const ExtraDetailsWidgets({
    super.key,
    required this.imagePath,
    required this.text,
    required this.number,
  });
  final String imagePath;
  final String text;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56.w,
          height: 56.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 196, 203, 216),
          ),
          child: Center(
            child: SvgPicture.asset(
              imagePath,
            ),
          ),
        ),
        Text(
          number,
          style: AppTextStyles.bold18,
        ),
        Text(
          text,
          style: AppTextStyles.regular14,
        ),
      ],
    );
  }
}
