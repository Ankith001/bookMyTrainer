// import 'package:dartz/dartz.dart';
// import '../core/value_failures.dart';

// Either<ValueFailure<String>, String> validateTrainerName(String input) {
//   if (input.isEmpty) {
//     return left(ValueFailure.empty(failedValue: input));
//   } else if (input.length < 3) {
//     return left(ValueFailure.tooShort(failedValue: input, minLength: 3));
//   }
//   return right(input);
// }

// Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
//   const phoneRegex = r'^\+?[\d\s-]{10,}$';
//   if (input.isEmpty) {
//     return left(ValueFailure.empty(failedValue: input));
//   } else if (!RegExp(phoneRegex).hasMatch(input)) {
//     return left(ValueFailure.invalidPhone(failedValue: input));
//   }
//   return right(input);
// }

// Either<ValueFailure<String>, String> validateEmail(String input) {
//   const emailRegex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
//   if (input.isEmpty) {
//     return left(ValueFailure.empty(failedValue: input));
//   } else if (!RegExp(emailRegex).hasMatch(input)) {
//     return left(ValueFailure.invalidEmail(failedValue: input));
//   }
//   return right(input);
// }

// Either<ValueFailure<String>, String> validateExperience(String input) {
//   if (input.isEmpty) {
//     return left(ValueFailure.empty(failedValue: input));
//   }
//   return right(input);
// }

// Either<ValueFailure<String>, String> validateSpecialization(String input) {
//   if (input.isEmpty) {
//     return left(ValueFailure.empty(failedValue: input));
//   }
//   return right(input);
// }
