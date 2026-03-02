import 'package:doc_appointment_app/assets.dart';
import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/features/auth/presentation/views/get_started_view.dart';
import 'package:doc_appointment_app/features/onboarding/data/models/onboarding_item_model.dart';
import 'package:doc_appointment_app/features/onboarding/presentation/widgets/onboarding_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});
  static const String routeName = '/onboarding';

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController controller = PageController();
  final List<OnboardingItemModel> onboardingItems = [
    OnboardingItemModel(
      image: Assets.images.onboarding_1_svg,
      title: 'Meet Doctors Online',
      subtitle:
          'Connect with Specialized Doctors Online for\nConvenient and Comprehensive Medical\nConsultations.',
    ),
    OnboardingItemModel(
      image: Assets.images.onboarding_2_svg,
      title: 'Connect with Specialists',
      subtitle:
          'Connect with Specialized Doctors Online for\nConvenient and Comprehensive Medical\nConsultations.',
    ),
    OnboardingItemModel(
      image: Assets.images.onboarding_3_svg,
      title: 'Thousands of Online Specialists',
      subtitle:
          'Connect with Specialized Doctors Online for\nConvenient and Comprehensive Medical\nConsultations.',
    ),
  ];
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            itemCount: onboardingItems.length,
            itemBuilder: (context, index) {
              return OnboardingItem(
                image: onboardingItems[index].image,
                title: onboardingItems[index].title,
                subtitle: onboardingItems[index].subtitle,
                onNextPressed: () {
                  if (index == onboardingItems.length - 1) {
                    GoRouter.of(context).go(GetStartedView.routeName);
                  } else {
                    controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.bounceIn,
                    );
                  }
                },
                onSkipPressed: () {
                  controller.jumpToPage(onboardingItems.length - 1);
                },
              );
            },
          ),
          Positioned(
            bottom: 100.h,
            left: MediaQuery.of(context).size.width / 2 - 20.w,
            right: MediaQuery.of(context).size.width / 2 - 20.w,
            child: SmoothPageIndicator(
              controller: controller,
              count: onboardingItems.length,
              effect: ExpandingDotsEffect(
                dotColor: AppColors.lightGreyColor,
                activeDotColor: AppColors.primaryColor,
                dotHeight: 10.h,
                dotWidth: 10.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
