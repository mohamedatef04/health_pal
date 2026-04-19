import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        text,
        style: AppTextStyles.bold18,
        textAlign: TextAlign.start,
      ),
    );
  }
}
