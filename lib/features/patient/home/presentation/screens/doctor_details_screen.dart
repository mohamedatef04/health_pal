import 'package:doc_appointment_app/features/patient/home/presentation/widgets/doctor_card_widget.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/widgets/doctor_details/about_me_widget.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/widgets/doctor_details/book_appointment_button.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/widgets/doctor_details/doctor_extra_details_row.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/widgets/doctor_details/doctor_reviews_section.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/widgets/doctor_details/working_time_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({super.key});

  static const String routeName = '/doctor_details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Doctor Details'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20.h,
            children: [
              DoctorCardWidget(),
              DoctorExtraDetailsRow(),
              AboutMeWidget(),
              WorkingTimeWidget(),
              DoctorReviewsSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: const BookAppointmentButton(),
      ),
    );
  }
}
