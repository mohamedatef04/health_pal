import 'package:doc_appointment_app/features/patient/home/presentation/widgets/doctor_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsWishlistListview extends StatelessWidget {
  const DoctorsWishlistListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const DoctorCardWidget();
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 16.h);
      },
    );
  }
}
