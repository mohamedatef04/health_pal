import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static const TextStyle bold18 = TextStyle(
    fontSize: 18,
    fontFamily: 'inter',
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );
  static const TextStyle regular14 = TextStyle(
    fontSize: 14,
    fontFamily: 'inter',
    fontWeight: FontWeight.w400,
    color: AppColors.lightGreyColor,
  );
  static const TextStyle medium16 = TextStyle(
    fontSize: 16,
    fontFamily: 'inter',
    fontWeight: FontWeight.w500,
    color: AppColors.whiteColor,
  );
  static const TextStyle semiBold14 = TextStyle(
    fontSize: 14,
    fontFamily: 'inter',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle interBold = TextStyle(
    fontFamily: 'inter',
    fontWeight: FontWeight.w700,
  );
}
