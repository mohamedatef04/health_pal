import 'package:doc_appointment_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const OnboardingView(),
    ),
  ],
);
