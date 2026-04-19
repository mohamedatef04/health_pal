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
            text: "Patients",
            number: "100+",
          ),
        ),
        Expanded(
          child: ExtraDetailsWidgets(
            imagePath: Assets.images.experince_svg,
            text: "Experience",
            number: "10+ Years",
          ),
        ),
        Expanded(
          child: ExtraDetailsWidgets(
            imagePath: Assets.images.rate_svg,
            text: "Rating",
            number: "4.5",
          ),
        ),
        Expanded(
          child: ExtraDetailsWidgets(
            imagePath: Assets.images.reviews_svg,
            text: "Reviews",
            number: "120",
          ),
        ),
      ],
    );
  }
}
