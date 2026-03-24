import 'package:doc_appointment_app/core/routes/app_routes.dart';
import 'package:doc_appointment_app/core/DI/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await Supabase.initialize(
    url: 'https://skjcnrfalcgboffufqax.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNramNucmZhbGNnYm9mZnVmcWF4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzI0MDM5MjUsImV4cCI6MjA4Nzk3OTkyNX0.LOpthl-2gPepDI-KUozGgN_6S6guUj_DiZdOsuvqPH0',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: router,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
