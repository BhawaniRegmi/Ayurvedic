import 'package:bloc/bloc.dart';

import 'package:dash_logistics/repositories/package_repository.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final PackageRepository packageRepository;

  HomeBloc(this.packageRepository) : super(HomeInitial()) {
    on<FetchDashboardData>(_onFetchDashboardData);
    on<TrackPackage>(_onTrackPackage);
  }

  Future<void> _onFetchDashboardData(
      FetchDashboardData event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {
      final dashboardData = {
        'totalOrders': 86,
        'totalCOD': 265919,
        'totalRTV': 0,
        'deliveryCharge': 8375,
        'pendingCOD': 237544,
        'lastCODPayment': 500,
        'todaysOrders': 8,
        'todaysDelivered': 5,
        'todaysRescheduled': 2,
        'todaysCancellation': 1,
        'openTickets': 0,
        'dailyOrderStatus': [
          {'date': '2025-03-16', 'value': 5},
          {'date': '2025-03-17', 'value': 18},
          {'date': '2025-03-18', 'value': 4},
          {'date': '2025-03-19', 'value': 34},
        ],
        'ordersDelivered': [
          {'date': '2025-03-16', 'value': 5},
          {'date': '2025-03-17', 'value': 18},
          {'date': '2025-03-18', 'value': 4},
        ],
        'stationOrderStatus': {'insideValley': 71.33, 'outsideValley': 28.67},
      };
      emit(HomeLoaded(dashboardData: dashboardData));
    } catch (e) {
      emit(HomeError('Failed to load dashboard data'));
    }
  }

  Future<void> _onTrackPackage(
      TrackPackage event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {
      final package =
          await packageRepository.fetchPackageDetails(event.trackingNumber);
      final dashboardData = {
        'totalOrders': 86,
        'totalCOD': 265919,
        'totalRTV': 0,
        'deliveryCharge': 8375,
        'pendingCOD': 237544,
        'lastCODPayment': 500,
        'todaysOrders': 8,
        'todaysDelivered': 5,
        'todaysRescheduled': 2,
        'todaysCancellation': 1,
        'openTickets': 0,
        'dailyOrderStatus': [
          {'date': '2025-03-16', 'value': 5},
          {'date': '2025-03-17', 'value': 18},
          {'date': '2025-03-18', 'value': 4},
          {'date': '2025-03-19', 'value': 34},
        ],
        'ordersDelivered': [
          {'date': '2025-03-16', 'value': 5},
          {'date': '2025-03-17', 'value': 18},
          {'date': '2025-03-18', 'value': 4},
        ],
        'stationOrderStatus': {'insideValley': 71.33, 'outsideValley': 28.67},
      };
      emit(HomeLoaded(package: package, dashboardData: dashboardData));
    } catch (e) {
      emit(HomeError('Failed to track package'));
    }
  }
}