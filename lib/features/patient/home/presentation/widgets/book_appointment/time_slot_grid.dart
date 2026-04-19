import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeSlotGrid extends StatefulWidget {
  const TimeSlotGrid({super.key});

  @override
  State<TimeSlotGrid> createState() => _TimeSlotGridState();
}

class _TimeSlotGridState extends State<TimeSlotGrid> {
  final List<String> _timeSlots = [
    '09.00 AM', '09.30 AM', '10.00 AM',
    '10.30 AM', '11.00 AM', '11.30 AM',
    '3.00 PM', '3.30 PM', '4.00 PM',
    '4.30 PM', '5.00 PM', '5.30 PM'
  ];

  int _selectedIndex = 2; // Selected "10.00 AM" by default

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.h,
        childAspectRatio: 2.2,
      ),
      itemCount: _timeSlots.length,
      itemBuilder: (context, index) {
        bool isSelected = _selectedIndex == index;
        return InkWell(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: isSelected ? AppColors.primaryColor : const Color(0xFFF9FAFB),
              borderRadius: BorderRadius.circular(8.r),
            ),
            alignment: Alignment.center,
            child: Text(
              _timeSlots[index],
              style: AppTextStyles.medium16.copyWith(
                color: isSelected ? Colors.white : AppColors.greyColor,
                fontSize: 14.sp,
              ),
            ),
          ),
        );
      },
    );
  }
}
