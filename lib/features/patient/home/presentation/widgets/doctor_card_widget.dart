import 'package:doc_appointment_app/assets.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/screens/doctor_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DoctorCardWidget extends StatelessWidget {
  const DoctorCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(DoctorDetailsScreen.routeName);
      },
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),

        child: Container(
          width: 342.w,
          height: 133.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              spacing: 10.w,
              children: [
                Expanded(child: Image.asset(Assets.images.doc_png)),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "Dr. John Doe",
                              style: AppTextStyles.bold18,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 200.w,
                        child: const Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                        ),
                      ),
                      const Text(
                        "Cardiologist",
                        style: AppTextStyles.regular14,
                      ),
                      const Row(
                        children: [
                          Icon(Icons.location_on),
                          Text(
                            "SunRise Health Clinic",

                            style: AppTextStyles.regular14,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          Text("4.5"),
                          SizedBox(
                            height: 20,
                            child: VerticalDivider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Text("(120 reviews)"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
