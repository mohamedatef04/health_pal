import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CategoryHeaderRowWidget extends StatelessWidget {
  const CategoryHeaderRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "532 founds",
          style: AppTextStyles.bold18,
        ),
        Spacer(),
        Row(
          children: [
            Text(
              "Sort by",
              style: AppTextStyles.bold18,
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ],
    );
  }
}
