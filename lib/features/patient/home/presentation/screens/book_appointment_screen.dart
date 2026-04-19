import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/widgets/book_appointment/calendar_widget.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/widgets/book_appointment/confirm_button.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/widgets/book_appointment/time_slot_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookAppointmentScreen extends StatelessWidget {
  const BookAppointmentScreen({super.key});

  static const String routeName = '/book_appointment';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Book Appointment'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20.h,
            children: [
              const Text(
                'Select Date',
                style: AppTextStyles.semiBold20,
              ),
              const CalendarWidget(),
              const Text(
                'Select Hour',
                style: AppTextStyles.semiBold20,
              ),
              const TimeSlotGrid(),
              SizedBox(height: 80.h), // Safe spacing for Bottom button
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        color: Theme.of(context).scaffoldBackgroundColor,
        child: const ConfirmButton(),
      ),
    );
  }
}
