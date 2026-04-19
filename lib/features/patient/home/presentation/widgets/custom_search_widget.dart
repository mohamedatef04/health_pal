import 'package:doc_appointment_app/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(
      hintText: 'Search A Doctor',
      labelText: '',
      prefixIcon: Icon(Icons.search),
    );
  }
}
