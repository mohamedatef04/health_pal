import 'package:doc_appointment_app/assets.dart';
import 'package:doc_appointment_app/core/helper/toast_bar.dart';
import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:doc_appointment_app/core/validator/validator.dart';
import 'package:doc_appointment_app/core/widgets/custom_elevated_button.dart';
import 'package:doc_appointment_app/features/auth/data/models/user_model.dart';
import 'package:doc_appointment_app/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:doc_appointment_app/features/auth/presentation/views/login_view.dart';
import 'package:doc_appointment_app/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:doc_appointment_app/features/auth/presentation/widgets/or_divider.dart';
import 'package:doc_appointment_app/features/auth/presentation/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';

class PatientRegisterView extends StatefulWidget {
  const PatientRegisterView({super.key});
  static const String routeName = '/patient-register';

  @override
  State<PatientRegisterView> createState() => _PatientRegisterViewState();
}

class _PatientRegisterViewState extends State<PatientRegisterView> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  bool isPasswordVisible = true;

  @override
  void dispose() {
    _nameController.dispose();
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
                    'Create Account',
                    style: AppTextStyles.bold18.copyWith(fontSize: 20.sp),
                  ),
                  SizedBox(height: 8.h),
                  const Text(
                    'We are here to help you!',
                    style: AppTextStyles.regular14,
                  ),
                  SizedBox(height: 28.h),
                  CustomTextField(
                    labelText: 'Name',
                    hintText: 'Your Name',
                    controller: _nameController,
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(12.w),
                      child: SvgPicture.asset(
                        Assets.images.user_svg,
                        width: 20.w,
                        height: 20.h,
                      ),
                    ),
                    validator: (value) => Validator.validateEmptyText(value),
                  ),
                  SizedBox(height: 16.h),
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
                    validator: (value) => Validator.validateEmail(value),
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
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                    validator: (value) => Validator.validatePassword(value),
                  ),
                  SizedBox(height: 24.h),
                  BlocConsumer<RegisterCubit, RegisterState>(
                    listener: (context, state) {
                      if (state is RegisterSuccess) {
                        showToastificationBar(
                          context: context,
                          message: 'Account created successfully',
                          title: 'Success',
                          type: ToastificationType.success,
                          color: AppColors.primaryColor,
                          icon: Icons.check,
                        );
                      } else if (state is RegisterFailure) {
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
                        text: 'Create Account',
                        isLoading: state is RegisterLoading,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<RegisterCubit>().register(
                              userModel: UserModel(
                                email: _emailController.text.trim(),
                                name: _nameController.text.trim(),
                                password: _passwordController.text.trim(),
                                role: 'patient',
                              ),
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
                    text: 'Continue with Google',
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
                    text: 'Continue with Facebook',
                    icon: const Icon(Icons.facebook, color: Colors.blue),
                    onPressed: () {},
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Do you have an account? ',
                        style: AppTextStyles.regular14,
                      ),
                      GestureDetector(
                        onTap: () =>
                            GoRouter.of(context).push(LoginView.routeName),
                        child: Text(
                          'Sign In',
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
