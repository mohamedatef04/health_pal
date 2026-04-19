import 'package:doc_appointment_app/assets.dart';
import 'package:doc_appointment_app/core/helper/toast_bar.dart';
import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:doc_appointment_app/core/widgets/custom_elevated_button.dart';
import 'package:doc_appointment_app/features/auth/presentation/cubits/check_role/check_role_cubit.dart';
import 'package:doc_appointment_app/features/auth/presentation/cubits/sign_in/sign_in_cubit.dart';
import 'package:doc_appointment_app/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:doc_appointment_app/features/auth/presentation/widgets/or_divider.dart';
import 'package:doc_appointment_app/features/auth/presentation/widgets/social_login_button.dart';
import 'package:doc_appointment_app/features/doctor/home/presentation/screens/root_doctor_home_screen.dart';
import 'package:doc_appointment_app/features/patient/home/presentation/screens/root_patient_home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:toastification/toastification.dart';

class LoginView extends StatefulWidget {
  const LoginView({
    super.key,
  });
  static const String routeName = '/login';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isPasswordVisible = true;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Form(
              key: _formKey,
              autovalidateMode: autovalidateMode,
              child: Column(
                children: [
                  SvgPicture.asset(Assets.images.logo_svg, height: 80.h),
                  SizedBox(height: 8.h),
                  Text(
                    'HealthPal',
                    style: AppTextStyles.bold18.copyWith(fontSize: 16.sp),
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    'Hi, Welcome Back!',
                    style: AppTextStyles.bold18.copyWith(fontSize: 20.sp),
                  ),
                  SizedBox(height: 8.h),
                  const Text(
                    "Hope you're doing fine.",
                    style: AppTextStyles.regular14,
                  ),
                  SizedBox(height: 28.h),
                  CustomTextField(
                    labelText: 'Email',
                    hintText: 'Your Email',
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(12.w),
                      child: SvgPicture.asset(
                        Assets.images.email_svg,
                        width: 20.w,
                        height: 20.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  CustomTextField(
                    labelText: 'Password',
                    hintText: 'Password',
                    controller: _passwordController,
                    obscureText: isPasswordVisible,
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(12.w),
                      child: SvgPicture.asset(
                        Assets.images.lock_svg,
                        width: 20.w,
                        height: 20.h,
                      ),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      icon: Icon(
                        isPasswordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  BlocConsumer<SignInCubit, SignInState>(
                    listener: (context, state) async {
                      if (state is SignInSuccess) {
                        final userId =
                            Supabase.instance.client.auth.currentUser!.id;
                        final isPatient = await context
                            .read<CheckRoleCubit>()
                            .checkRole(
                              userId: userId,
                            );
                        if (isPatient) {
                          GoRouter.of(
                            context,
                          ).go(RootPatientHomeView.routeName);
                        } else {
                          GoRouter.of(
                            context,
                          ).go(RootDoctorHomeScreen.routeName);
                        }
                      } else if (state is SignInFailure) {
                        showToastificationBar(
                          context: context,
                          message: state.errorMessage,
                          title: 'Error',
                          type: ToastificationType.error,
                          color: AppColors.redColor,
                          icon: Icons.error,
                        );
                      }
                    },
                    builder: (context, state) {
                      return CustomElevatedButton(
                        isLoading: state is SignInLoading,
                        text: 'Sign In',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<SignInCubit>().signIn(
                              email: _emailController.text.trim(),
                              password: _passwordController.text.trim(),
                            );
                          } else {
                            setState(() {
                              autovalidateMode = AutovalidateMode.always;
                            });
                          }
                        },
                      );
                    },
                  ),
                  SizedBox(height: 8.h),
                  const OrDivider(),
                  SizedBox(height: 8.h),
                  SocialLoginButton(
                    text: 'Sign In with Google',
                    icon: const Text(
                      'G',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(height: 12.h),
                  SocialLoginButton(
                    text: 'Sign In with Facebook',
                    icon: const Icon(Icons.facebook, color: Colors.blue),
                    onPressed: () {},
                  ),
                  SizedBox(height: 16.h),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot password?',
                      style: AppTextStyles.semiBold14.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account yet? ",
                        style: AppTextStyles.regular14,
                      ),
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).pop();
                        },
                        child: Text(
                          'Sign up',
                          style: AppTextStyles.semiBold14.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
