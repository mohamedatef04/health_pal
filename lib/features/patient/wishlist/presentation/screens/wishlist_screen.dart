import 'package:doc_appointment_app/core/theme/app_colors.dart';
import 'package:doc_appointment_app/core/theme/app_text_styles.dart';
import 'package:doc_appointment_app/features/patient/wishlist/presentation/widgets/clinics_wishlist_listview.dart';
import 'package:doc_appointment_app/features/patient/wishlist/presentation/widgets/doctors_wishlist_listview.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});
  static const String routeName = '/wishlist_screen';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Wishlist',
            style: AppTextStyles.semiBold16,
          ),
          bottom: const TabBar(
            indicatorColor: AppColors.primaryColor,
            labelColor: AppColors.primaryColor,
            unselectedLabelColor: Color(0xFF9CA3AF),
            labelStyle: AppTextStyles.semiBold16,
            unselectedLabelStyle: AppTextStyles.regular16,
            tabs: [
              Tab(
                text: 'Doctors',
              ),
              Tab(
                text: 'Clinics',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            DoctorsWishlistListview(),
            ClinicsWishlistListview(),
          ],
        ),
      ),
    );
  }
}
