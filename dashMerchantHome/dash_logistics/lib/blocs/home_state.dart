import 'package:dash_logistics/models/package_model.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final Package? package;
  final Map<String, dynamic> dashboardData;

  HomeLoaded({this.package, required this.dashboardData});
}

class HomeError extends HomeState {
  final String message;

  HomeError(this.message);
}