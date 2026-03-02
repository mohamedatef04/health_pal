import 'package:doc_appointment_app/assets.dart';
import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:doc_appointment_app/core/widgets/custom_elevated_button.dart';
import 'package:doc_appointment_app/features/auth/presentation/views/doctor_register_view.dart';
import 'package:doc_appointment_app/features/auth/presentation/views/patient_register_view.dart';
import 'package:doc_appointment_app/features/auth/presentation/widgets/role_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class GetStartedView extends StatefulWidget {
  const GetStartedView({super.key});
  static const String routeName = '/get-started';

  @override
  State<GetStartedView> createState() => _GetStartedViewState();
}

class _GetStartedViewState extends State<GetStartedView> {
  String? _selectedRole;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                SvgPicture.asset(Assets.images.logo_svg, height: 80.h),
                SizedBox(height: 8.h),
                Text(
                  'HealthPal',
                  style: AppTextStyles.bold18.copyWith(fontSize: 22.sp),
                ),
                SizedBox(height: 32.h),
                Text(
                  'Who are you?',
                  style: AppTextStyles.bold18.copyWith(fontSize: 20.sp),
                ),
                SizedBox(height: 8.h),
                const Text(
                  'Select your role to get started.',
                  style: AppTextStyles.regular14,
                ),
                SizedBox(height: 32.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoleCardWidget(
                      icon: Icons.person_outline,
                      label: 'Patient',
                      isSelected: _selectedRole == 'patient',
                      onTap: () => setState(() => _selectedRole = 'patient'),
                    ),
                    SizedBox(width: 20.w),
                    RoleCardWidget(
                      icon: Icons.medical_services_outlined,
                      label: 'Doctor',
                      isSelected: _selectedRole == 'doctor',
                      onTap: () => setState(() => _selectedRole = 'doctor'),
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                CustomElevatedButton(
                  text: 'Continue',
                  onPressed: () {
                    if (_selectedRole != null) {
                      if (_selectedRole == 'patient') {
                        GoRouter.of(
                          context,
                        ).push(PatientRegisterView.routeName);
                      } else {
                        GoRouter.of(context).push(DoctorRegisterView.routeName);
                      }
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
