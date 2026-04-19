import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});
  static const String routeName = '/notifications_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Notification',
          style: AppTextStyles.semiBold18,
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
            margin: EdgeInsets.only(right: 16.w),
            decoration: BoxDecoration(
              color: const Color(0xFF1C2A3A),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Text(
              '1 New',
              style: AppTextStyles.regular12.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context, "TODAY"),
              _buildNotificationItem(
                context,
                icon: Icons.calendar_today,
                iconColor: const Color(0xFFE7F6EC),
                iconTextColor: const Color(0xFF0F973D),
                title: 'Appointment Success',
                body: 'You have successfully booked your appointment with Dr. Emily Walker.',
                time: '1h',
              ),
              _buildNotificationItem(
                context,
                icon: Icons.calendar_view_day,
                iconColor: const Color(0xFFFEF0F0),
                iconTextColor: const Color(0xFFF44336),
                title: 'Appointment Cancelled',
                body: 'You have successfully cancelled your appointment with Dr. David Patel.',
                time: '2h',
              ),
              _buildNotificationItem(
                context,
                icon: Icons.edit_calendar,
                iconColor: const Color(0xFFF0F5FE),
                iconTextColor: const Color(0xFF2196F3),
                title: 'Scheduled Changed',
                body: 'You have successfully changes your appointment with Dr. Jesica Turner.',
                time: '8h',
              ),
              SizedBox(height: 20.h),
              _buildHeader(context, "YESTERDAY"),
              _buildNotificationItem(
                context,
                icon: Icons.calendar_today,
                iconColor: const Color(0xFFE7F6EC),
                iconTextColor: const Color(0xFF0F973D),
                title: 'Appointment success',
                body: 'You have successfully booked your appointment with Dr. David Patel.',
                time: '1d',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyles.regular16.copyWith(
            color: const Color(0xFF9CA3AF),
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Mark all as read',
            style: AppTextStyles.semiBold14.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNotificationItem(
    BuildContext context, {
    required IconData icon,
    required Color iconColor,
    required Color iconTextColor,
    required String title,
    required String body,
    required String time,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: iconColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: iconTextColor,
              size: 24.sp,
            ),
          ),
          SizedBox(width: 15.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.bold16,
                    ),
                    Text(
                      time,
                      style: AppTextStyles.regular12.copyWith(color: const Color(0xFF9CA3AF)),
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                Text(
                  body,
                  style: AppTextStyles.regular14.copyWith(color: AppColors.greyColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
