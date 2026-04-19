import 'package:doc_appointment_app/assets.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/widgets/doctor_details/extra_details_widgets.dart';
import 'package:flutter/material.dart';

class DoctorExtraDetailsRow extends StatelessWidget {
  const DoctorExtraDetailsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ExtraDetailsWidgets(
            imagePath: Assets.images.patients_svg,
            text: "patients",
            number: "2,000+",
          ),
        ),
        Expanded(
          child: ExtraDetailsWidgets(
            imagePath: Assets.images.experince_svg,
            text: "experience",
            number: "10+",
          ),
        ),
        Expanded(
          child: ExtraDetailsWidgets(
            imagePath: Assets.images.rate_svg,
            text: "rating",
            number: "5",
          ),
        ),
        Expanded(
          child: ExtraDetailsWidgets(
            imagePath: Assets.images.reviews_svg,
            text: "reviews",
            number: "1,872",
          ),
        ),
      ],
    );
  }
}
