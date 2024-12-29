class Validators {
  static String? required(String? value) {
    return value == null || value.isEmpty ? "Required field" : null;
  }

  static String? validateMobile(String? value) {
    if (value == null || value.isEmpty && value.length == 10) {
      return "Mobile number is required";
    }

    if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      return "Invalid mobile number";
    }

    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }

    // Add your specific validation logic for an email address.
    // You might want to use regular expressions or a dedicated email validation package.

    // Example: Check if the value matches a basic email pattern.
    if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)) {
      return "Invalid email address";
    }

    return null;
  }
}