class Validator {
  static String? validateEmptyText(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }

    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    final emailRegExp = RegExp(
      r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$',
    );

    if (!emailRegExp.hasMatch(value)) {
      return 'This field is invalid';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }

    if (value.length < 6) {
      return 'This field is too short';
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'This field is too short';
    }
    if (!value.contains(RegExp(r'[a-z]'))) {
      return 'This field is too short';
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'This field is too short';
    }
    if (!value.contains(RegExp(r'^(?=.*?[#?!@$%^&*-])'))) {
      return 'This field is too short';
    }
    return null;
  }

  static String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    final phoneRegExp = RegExp(r'^(010|011|012|015)[0-9]{8}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'This field is invalid';
    }
    return null;
  }

  static String? validateConfirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    if (value != password) {
      return 'This field is invalid';
    }
    return null;
  }
}
