import 'package:doc_appointment_app/features/patient/booking/presentation/widgets/booking_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CanceledBookingsList extends StatelessWidget {
  const CanceledBookingsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.w),
      children: const [
        BookingCard(
          date: 'Feb 2, 2023 - 9.00 AM',
          doctorName: 'Dr. Michael Chang',
          specialty: 'Cardiologist',
          clinic: 'HeartCare Center, USA',
          image:
              'https://img.freepik.com/free-photo/doctor-smiling-with-his-arms-crossed_1262-12344.jpg',
          status: BookingStatus.canceled,
        ),
      ],
    );
  }
}
