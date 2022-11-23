part of 'appointment_cubit.dart';

@immutable
abstract class AppointmentState {}

class AppointmentInitial extends AppointmentState {}

class IsGetAppointment extends AppointmentState {}

class AppointmentSuccessState extends AppointmentState {
  ReservationModel oldreservationModel;
  ReservationModel waitingModel;
  ReservationModel comingModel;
  ReservationModel rejectedModel;

  AppointmentSuccessState(
      {required this.oldreservationModel,
      required this.waitingModel,
      required this.comingModel,
      required this.rejectedModel});
}
class UpDateAppointment extends AppointmentState {}
class AppointmentErrorState extends AppointmentState {}
