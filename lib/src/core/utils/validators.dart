class Validators {
  Validators._();

  static String? emailValidator(String? email) {
    final emailRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    );
    if (email == null || email.isEmpty) {
      return 'Email is required';
    }

    if (!emailRegex.hasMatch(email)) {
      return 'Enter valid email';
    }

    return null;
  }

  static String? requiredFieldValidators(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please fill the field';
    }
    return null;
  }

  static String? passwordValidators(
    String? password, {
    String? confirmPassword,
    String? updatePassword,
  }) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    }

    if (password.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    if (confirmPassword != null && password != confirmPassword) {
      return "Password doesn't match";
    }
    return null;
  }

  static String? uniquePasswordValidator({
    required String oldPassword,
    String? newPassword,
  }) {
    if (newPassword == null || newPassword.isEmpty) {
      return 'Password is required';
    }

    if (newPassword.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    if (newPassword == oldPassword) {
      return 'Old password cannot be new password';
    }
    return null;
  }

  static String? phoneValidator(String? phone) {
    final phoneRegex = RegExp(r'^[0-9]{10}$');
    if (phone == null || phone.isEmpty) {
      return null;
    }
    if (!phoneRegex.hasMatch(phone)) {
      return 'Enter a valid 10-digit phone number';
    }

    return null;
  }
}
