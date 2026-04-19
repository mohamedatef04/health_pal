import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduleCalendarItem extends StatelessWidget {
  final String day;
  final String date;
  final bool isSelected;

  const ScheduleCalendarItem({
    super.key,
    required this.day,
    required this.date,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 90.h,
      decoration: BoxDecoration(
        color: isSelected ? AppColors.blueColor : AppColors.whiteColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(24.r),
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: AppColors.blueColor.withValues(alpha: 0.3),
                  blurRadius: 15,
                  offset: const Offset(0, 5),
                )
              ]
            : null,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day.toUpperCase(),
            style: AppTextStyles.semiBold12.copyWith(
              color: isSelected ? AppColors.whiteColor : AppColors.lightGreyColor,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            date,
            style: AppTextStyles.bold18.copyWith(
              color: isSelected ? AppColors.whiteColor : AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

class ScheduleCalendar extends StatelessWidget {
  const ScheduleCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        itemCount: days.length,
        itemBuilder: (context, index) {
          return ScheduleCalendarItem(
            day: days[index]['day']!,
            date: days[index]['date']!,
            isSelected: index == 2, // Selected 'Wed 18' as placeholder
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 12.w),
      ),
    );
  }
}

final List<Map<String, String>> days = [
  {'day': 'Mon', 'date': '16'},
  {'day': 'Tue', 'date': '17'},
  {'day': 'Wed', 'date': '18'},
  {'day': 'Thu', 'date': '19'},
  {'day': 'Fri', 'date': '20'},
];
