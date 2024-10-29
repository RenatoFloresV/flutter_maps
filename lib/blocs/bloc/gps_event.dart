part of 'gps_bloc.dart';

sealed class GpsEvent extends Equatable {
  const GpsEvent();

  @override
  List<Object> get props => [];
}

class GpsAndPermissionEvent extends GpsEvent {
  const GpsAndPermissionEvent(
      {required this.isGpsEnabled, required this.isGpsPermissionGranted});

  final bool isGpsEnabled;
  final bool isGpsPermissionGranted;

  @override
  List<Object> get props => [isGpsEnabled, isGpsPermissionGranted];
}
