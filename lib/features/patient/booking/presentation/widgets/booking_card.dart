import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum BookingStatus { upcoming, completed, canceled }

class BookingCard extends StatelessWidget {
  final String date;
  final String doctorName;
  final String specialty;
  final String clinic;
  final String image;
  final BookingStatus status;

  const BookingCard({
    super.key,
    required this.date,
    required this.doctorName,
    required this.specialty,
    required this.clinic,
    required this.image,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            offset: const Offset(0, 5),
            blurRadius: 15,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: AppTextStyles.semiBold14.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 10.h),
          const Divider(thickness: 0.5),
          SizedBox(height: 10.h),
          Row(
            spacing: 16.w,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.network(
                  image,
                  width: 80.w,
                  height: 80.h,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4.h,
                  children: [
                    Text(
                      doctorName,
                      style: AppTextStyles.bold16,
                    ),
                    Text(
                      specialty,
                      style: AppTextStyles.regular12.copyWith(color: AppColors.greyColor),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 14,
                          color: AppColors.primaryColor,
                        ),
                        SizedBox(width: 4.w),
                        Expanded(
                          child: Text(
                            clinic,
                            style: AppTextStyles.regular12.copyWith(
                              color: AppColors.greyColor,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Row(
            spacing: 12.w,
            children: [
              Expanded(
                child: _buildButton(
                  text: status == BookingStatus.upcoming ? 'Cancel' : 'Re-Book',
                  backgroundColor: const Color(0xFFE5E7EB),
                  textColor: AppColors.primaryColor,
                ),
              ),
              Expanded(
                child: _buildButton(
                  text: status == BookingStatus.upcoming ? 'Reschedule' : 'Add Review',
                  backgroundColor: AppColors.primaryColor,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButton({
    required String text,
    required Color backgroundColor,
    required Color textColor,
  }) {
    return SizedBox(
      height: 40.h,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          elevation: 0,
        ),
        child: Text(
          text,
          style: AppTextStyles.bold14.copyWith(color: textColor),
        ),
      ),
    );
  }
}
