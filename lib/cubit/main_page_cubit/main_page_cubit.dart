import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../screen/PROFILE/base_profile.dart';
import '../../screen/RESCHUDULE/reschudule.dart';
import '../../screen/appointment.dart';
import '../../screen/main_page/main_screen.dart';
import '../../screen/main_page/wallet.dart';
part 'main_page_state.dart';

class MainPageCubit extends Cubit<MainPageCubirState> {
  static MainPageCubit get(context) => BlocProvider.of(context);
  MainPageCubit() : super(MainPageCubirInitial());

  int currentIndex = 0;
  List<Widget>screens = [MainScreen(),Appointment(), WALLET(), RESCHUDULE(), BaseProfile()];
  bottomNavigationBarChing( int index){

    currentIndex=index;
    emit(BottomNavigationBar(index));




  }



}
