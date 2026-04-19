import 'package:doc_appointment_app/assets.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Yassine Ali',
        style: AppTextStyles.bold18,
      ),

      trailing: SvgPicture.asset(Assets.images.notification_bing_svg),
    );
  }
}
