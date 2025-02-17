

class Validators {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    if (!RegExp(r'^.+@[a-zA-Z]+\\.[a-zA-Z]+').hasMatch(value)) {
      return 'Enter a valid email';
    }
    return null;
  }
}

