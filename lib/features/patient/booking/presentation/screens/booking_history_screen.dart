import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:doc_appointment_app/features/patient/booking/presentation/widgets/canceled_bookings_list.dart';
import 'package:doc_appointment_app/features/patient/booking/presentation/widgets/completed_bookings_list.dart';
import 'package:doc_appointment_app/features/patient/booking/presentation/widgets/upcoming_bookings_list.dart';
import 'package:flutter/material.dart';

class BookingHistoryScreen extends StatelessWidget {
  const BookingHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('My Bookings'),
          bottom: const TabBar(
            indicatorColor: AppColors.primaryColor,
            labelColor: AppColors.primaryColor,
            unselectedLabelColor: Color(0xFF9CA3AF),
            labelStyle: AppTextStyles.semiBold16,
            unselectedLabelStyle: AppTextStyles.regular16,
            tabs: [
              Tab(text: 'Upcoming'),
              Tab(text: 'Completed'),
              Tab(text: 'Canceled'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            UpcomingBookingsList(),
            CompletedBookingsList(),
            CanceledBookingsList(),
          ],
        ),
      ),
    );
  }
}
