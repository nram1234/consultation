import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../net/apis/coming_reservation_api.dart';
import '../../net/apis/old_reservation_api.dart';
import '../../net/apis/rejected_reservation_api.dart';
import '../../net/apis/waiting_reservation_api.dart';
import '../../net/model/reservation_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'appointment_state.dart';

class AppointmentCubit extends Cubit<AppointmentState> {
  AppointmentCubit() : super(AppointmentInitial());

  static AppointmentCubit get(context) => BlocProvider.of(context);


  List<String> list = ["القادمة", "قيد الانتظار", "السابقة", "مرفوضة"];
  int index = 0;
  PageController controller = PageController(initialPage: 3);


  updateindex(int i){
    index=i;
emit(UpDateAppointment());
  }


  ReservationModel? oldreservationModel;
  ReservationModel? waitingModel;
  ReservationModel? comingModel;
  ReservationModel? rejectedModel;

  appointmentRequest() async {
    emit(IsGetAppointment());
    RejectedReservationApi rejectedReservationApi = RejectedReservationApi();
    ComingReservationApi comingReservationApi = ComingReservationApi();
    OldReservationApi oldReservationApi=OldReservationApi();
    WaitingReservationApi waitingReservationApi=WaitingReservationApi();


    await rejectedReservationApi.getData().then((value) {
      rejectedModel = value as ReservationModel;

    }).catchError((e) {
      print("3333333333333333333333333333333333333333333333333333$e");
    });

    await comingReservationApi.getData().then((value) {
      comingModel = value as ReservationModel;

    }).catchError((e) {
      print("3333333333333333333333333333333333333333333333333333$e");
    });

    await oldReservationApi.getData().then((value) {
      oldreservationModel = value as ReservationModel;

    }).catchError((e) {
      print("3333333333333333333333333333333333333333333333333333$e");
    });

    await waitingReservationApi.getData().then((value) {
      waitingModel = value as ReservationModel;

    }).catchError((e) {
      print("3333333333333333333333333333333333333333333333333333$e");
    });


























    emit(AppointmentSuccessState(
        comingModel: comingModel!,
        oldreservationModel: oldreservationModel!,
        rejectedModel: rejectedModel!,
        waitingModel: waitingModel!));
    emit(UpDateAppointment());
  }
}
