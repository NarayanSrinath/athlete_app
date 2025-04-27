class ValidationUtils {
  // Validate Email format
  static bool isValidEmail(String email) {
    String pattern = r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$";
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(email);
  }

  // Validate Phone number format (e.g., for US phone number)
  static bool isValidPhoneNumber(String phoneNumber) {
    String pattern = r'^\+?[0-9]{10,15}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(phoneNumber);
  }

  // Validate if a field is empty
  static bool isNotEmpty(String value) {
    return value.isNotEmpty;
  }
}
