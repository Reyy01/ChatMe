String? validateString(String? value, String name) {
  if (value == null || value.trim().isEmpty) {
    return '$name is empty';
  }
  return null;
}

String? validatePassword(String? value, String name) {
  if (value == null || value.isEmpty) {
    return 'Invalid empty $name';
  }

  return null;
}

String? validateConfirmPassword(String? value, String base, String name) {
  if (value == null || value.isEmpty) {
    return 'Invalid empty $name confirmation';
  }

  if (value != base) {
    return 'Password did not match';
  }

  return null;
}

String? validatePhoneNumber(String? value) {
  final RegExp regExp = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');
  if (value == null || value.isEmpty || !regExp.hasMatch(value)) {
    return 'Invalid Phone Number';
  }

  return null;
}

String? validateEmailAddress(String? value) {
  bool emailValid = false;
  if (value != null) {
    emailValid = validEmailAddress().hasMatch(value);
  }

  if (value == null || value.isEmpty || !emailValid) {
    return 'Invalid Email Address';
  }

  return null;
}

RegExp validEmailAddress() => RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
