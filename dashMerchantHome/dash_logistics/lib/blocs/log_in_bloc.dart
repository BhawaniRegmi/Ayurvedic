// login_bloc.dart
import 'package:dash_logistics/blocs/log_in_event.dart';
import 'package:dash_logistics/blocs/log_in_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:dash_logistics/repositories/user_repository.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository userRepository;

  LoginBloc({required this.userRepository}) : super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginSubmitted) {
      yield LoginLoading();
      bool isAuthenticated = await userRepository.authenticateUser(event.email, event.password);
      if (isAuthenticated) {
        yield LoginSuccess();
      } else {
        yield LoginFailure(error: "Invalid email or password");
      }
    }
  }
}