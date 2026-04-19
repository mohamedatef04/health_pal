import 'package:doc_appointment_app/features/patient/home/presentation/widgets/doctor_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryDoctorsListView extends StatelessWidget {
  const CategoryDoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: const DoctorCardWidget(),
        );
      },
      itemCount: 10,
    );
  }
}
