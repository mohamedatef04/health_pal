import 'package:doc_appointment_app/core/shared/cubits/cubit/logout_cubit.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:doc_appointment_app/features/auth/presentation/views/get_started_view.dart';
import 'package:doc_appointment_app/features/patient/profile/presentation/screens/notifications_screen.dart';
import 'package:doc_appointment_app/features/patient/profile/presentation/widgets/profile_header.dart';
import 'package:doc_appointment_app/features/patient/profile/presentation/widgets/profile_option_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PatientProfileScreen extends StatelessWidget {
  const PatientProfileScreen({super.key});
  static const String routeName = '/patient_profile_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Profile',
          style: AppTextStyles.semiBold18,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            children: [
              const ProfileHeader(),
              SizedBox(height: 30.h),
              ProfileOptionTile(
                icon: Icons.person_outline,
                title: 'Edit Profile',
                onTap: () {},
              ),
              ProfileOptionTile(
                icon: Icons.favorite_border,
                title: 'Favorite',
                onTap: () {},
              ),
              ProfileOptionTile(
                icon: Icons.notifications_none,
                title: 'Notifications',
                onTap: () {
                  context.push(NotificationsScreen.routeName);
                },
              ),
              ProfileOptionTile(
                icon: Icons.settings_outlined,
                title: 'Settings',
                onTap: () {},
              ),
              ProfileOptionTile(
                icon: Icons.help_outline,
                title: 'Help and Support',
                onTap: () {},
              ),
              ProfileOptionTile(
                icon: Icons.security_outlined,
                title: 'Terms and Conditions',
                onTap: () {},
              ),
              BlocConsumer<LogoutCubit, LogoutState>(
                listener: (context, state) {
                  if (state is LogoutSuccess) {
                    GoRouter.of(context).go(GetStartedView.routeName);
                  } else if (state is LogoutFailure) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(state.errorMessage),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  return ProfileOptionTile(
                    icon: Icons.logout_outlined,
                    title: 'Log Out',
                    isLoading: state is LogoutLoading,
                    onTap: () {
                      context.read<LogoutCubit>().logout();
                    },
                    hasChevron: false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
