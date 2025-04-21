abstract class HomeEvent {}

class FetchDashboardData extends HomeEvent {}

class TrackPackage extends HomeEvent {
  final String trackingNumber;

  TrackPackage(this.trackingNumber);
}