import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationWidget extends StatefulWidget {
  final TextEditingController controller;
  const SpecializationWidget({super.key, required this.controller});

  @override
  State<SpecializationWidget> createState() => _SpecializationWidgetState();
}

class _SpecializationWidgetState extends State<SpecializationWidget> {
  final List<String> specializations = [
    'Cardiology',
    'Dermatology',
    'Neurology',
    'Orthopedics',
    'Pediatrics',
    'Psychiatry',
    'Radiology',
    'Surgery',
    'Ophthalmology',
    'Obstetrics and Gynecology',
    'Internal Medicine',
    'Family Medicine',
    'Endocrinology',
    'Gastroenterology',
    'Urology',
  ];

  String? selectedSpecialization;

  @override
  void initState() {
    super.initState();
    if (widget.controller.text.isNotEmpty &&
        specializations.contains(widget.controller.text)) {
      selectedSpecialization = widget.controller.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      initialValue: selectedSpecialization,
      style: AppTextStyles.regular14.copyWith(color: AppColors.primaryColor),
      items: specializations.map((String specialization) {
        return DropdownMenuItem<String>(
          value: specialization,
          child: Text(
            specialization,
            style: AppTextStyles.regular14.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          selectedSpecialization = newValue;
          widget.controller.text = newValue ?? '';
        });
      },
      decoration: InputDecoration(
        hintText: 'Select Specialization',
        hintStyle: AppTextStyles.regular14,
        filled: true,
        fillColor: AppColors.lightGrey,
        prefixIcon: Padding(
          padding: EdgeInsets.all(12.w),
          child: Icon(
            Icons.medical_services_outlined,
            size: 20.sp,
            color: AppColors.lightGreyColor,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(
            color: AppColors.primaryColor,
            width: 1.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(
            color: AppColors.redColor,
            width: 1.5,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(
            color: AppColors.redColor,
            width: 1.5,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 14.h,
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select a specialization';
        }
        return null;
      },
      icon: const Icon(
        Icons.keyboard_arrow_down_rounded,
        color: AppColors.lightGreyColor,
      ),
      dropdownColor: AppColors.whiteColor,
      borderRadius: BorderRadius.circular(16.r),
      menuMaxHeight: 300.h,
    );
  }
}
