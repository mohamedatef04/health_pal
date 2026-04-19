import 'package:doc_appointment_app/features/patient/booking/presentation/widgets/booking_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompletedBookingsList extends StatelessWidget {
  const CompletedBookingsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.w),
      children: const [
        BookingCard(
          date: 'March 12, 2023 - 11.00 AM',
          doctorName: 'Dr. Sarah Johnson',
          specialty: 'Gynecologist',
          clinic: "Women's Health Clinic",
          image:
              'https://img.freepik.com/free-photo/doctor-offering-medical-teleconsultation_23-2149329007.jpg',
          status: BookingStatus.completed,
        ),
        BookingCard(
          date: 'March 2, 2023 - 12.00 AM',
          doctorName: 'Dr. Michael Chang',
          specialty: 'Cardiologist',
          clinic: 'HeartCare Center, USA',
          image:
              'https://img.freepik.com/free-photo/doctor-smiling-with-his-arms-crossed_1262-12344.jpg',
          status: BookingStatus.completed,
        ),
      ],
    );
  }
}
