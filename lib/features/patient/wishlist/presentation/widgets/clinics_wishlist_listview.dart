import 'package:doc_appointment_app/features/patient/home/presentation/widgets/clinic_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClinicsWishlistListview extends StatelessWidget {
  const ClinicsWishlistListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ClinicCard();
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 16.h);
      },
    );
  }
}
