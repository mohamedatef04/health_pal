import 'package:doc_appointment_app/features/patient/home/presentation/widgets/clinic_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClinicsListView extends StatelessWidget {
  const ClinicsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: ListView.separated(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemBuilder: (context, index) {
          return SizedBox(width: 342.w, child: const ClinicCard());
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 16.w);
        },
      ),
    );
  }
}
