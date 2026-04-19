import 'package:doc_appointment_app/features/patient/booking/presentation/widgets/booking_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpcomingBookingsList extends StatelessWidget {
  const UpcomingBookingsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.w),
      children: const [
        BookingCard(
          date: 'May 22, 2023 - 10.00 AM',
          doctorName: 'Dr. James Robinson',
          specialty: 'Orthopedic Surgery',
          clinic: 'Elite Ortho Clinic, USA',
          image:
              'https://img.freepik.com/free-photo/handsome-smiling-medical-professional-examining-with-stethoscope-isolated-white_651396-1219.jpg',
          status: BookingStatus.upcoming,
        ),
        BookingCard(
          date: 'Jube 14, 2023 - 15.00pm',
          doctorName: 'Dr. Daniel Lee',
          specialty: 'Gastroenterologist',
          clinic: 'Digestive Institute, USA',
          image:
              'https://img.freepik.com/free-photo/doctor-working-hospital_23-2148827843.jpg',
          status: BookingStatus.upcoming,
        ),
        BookingCard(
          date: 'June 21, 2023 - 10.00 AM',
          doctorName: 'Dr. Nathan Harris',
          specialty: 'Dermatologist',
          clinic: 'Skin Care Clinics, USA',
          image:
              'https://img.freepik.com/free-photo/doctor-with-white-coat-stethoscope_23-2148816223.jpg',
          status: BookingStatus.upcoming,
        ),
      ],
    );
  }
}
