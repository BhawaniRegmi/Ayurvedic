
import 'package:dash_logistics/blocs/splash_event.dart';
import 'package:dash_logistics/blocs/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<LoadSplash>(_onLoadSplash);
    on<SkipSplash>(_onSkipSplash);
  }

  void _onLoadSplash(LoadSplash event, Emitter<SplashState> emit) {
    // Your logic for loading splash screen
    emit(SplashLoaded());
  }

  void _onSkipSplash(SkipSplash event, Emitter<SplashState> emit) {
    // Emit the skipped state
    emit(SplashSkipped());
  }
}