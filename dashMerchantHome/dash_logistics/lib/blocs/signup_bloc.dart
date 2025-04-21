import 'package:bloc/bloc.dart';
import 'package:dash_logistics/models/user_model.dart';
import 'package:dash_logistics/repositories/user_repository.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final UserRepository userRepository;

  SignUpBloc(this.userRepository) : super(SignUpInitial()) {
    on<SignUpSubmitted>(_onSignUpSubmitted);
  }

  Future<void> _onSignUpSubmitted(
      SignUpSubmitted event, Emitter<SignUpState> emit) async {
    emit(SignUpLoading());

    // Basic validation
    if (event.fullName.isEmpty) {
      emit(SignUpFailure('Full name is required'));
      return;
    }
    if (event.mobileNumber.isEmpty) {
      emit(SignUpFailure('Mobile number is required'));
      return;
    }
    if (event.password.isEmpty) {
      emit(SignUpFailure('Password is required'));
      return;
    }
    if (event.password != event.confirmPassword) {
      emit(SignUpFailure('Passwords do not match'));
      return;
    }
    if (!event.agreedToTerms) {
      emit(SignUpFailure('You must agree to the terms of service'));
      return;
    }

    try {
      // Using mobileNumber as part of a pseudo-email for the User model
      final user = User(
        email: '${event.mobileNumber}@dashlogistics.com',
        password: event.password,
      );
      await userRepository.addUser(user);
      emit(SignUpSuccess());
    } catch (e) {
      emit(SignUpFailure('Failed to sign up: ${e.toString()}'));
    }
  }
}