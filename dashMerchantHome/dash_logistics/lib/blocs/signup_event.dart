part of 'signup_bloc.dart';

abstract class SignUpEvent {}

class SignUpSubmitted extends SignUpEvent {
  final String fullName;
  final String mobileNumber;
  final String password;
  final String confirmPassword;
  final bool agreedToTerms;

  SignUpSubmitted({
    required this.fullName,
    required this.mobileNumber,
    required this.password,
    required this.confirmPassword,
    required this.agreedToTerms,
  });
}