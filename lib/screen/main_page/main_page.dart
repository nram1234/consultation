import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../cubit/main_page_cubit/main_page_cubit.dart';
import '../../utility/AppColor.dart';
import '../PROFILE/base_profile.dart';
import '../RESCHUDULE/reschudule.dart';
import 'main_screen.dart';
import 'wallet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class MainPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    MainPageCubit cubit = MainPageCubit.get(context);
    return Directionality(textDirection: TextDirection.rtl,
      child: BlocConsumer<MainPageCubit, MainPageCubirState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {

          return Scaffold(
            body:cubit. screens[cubit.currentIndex],
            bottomNavigationBar: Directionality(
              textDirection: TextDirection.rtl,
              child: BottomBar(
                padding: EdgeInsets.only(
                    top: 10, bottom: 10, left: 30, right: 30),
                showActiveBackgroundColor: true,
                selectedIndex:cubit. currentIndex,
                itemPadding:
                EdgeInsets.only(top: 10, bottom: 10, right: 16, left: 16),
                onTap: cubit.bottomNavigationBarChing,
                items: <BottomBarItem>[
                  BottomBarItem(
                      backgroundColorOpacity: .5,
                      icon: Icon(Icons.home),
                      title: Text(
                          'الرئيسية', style: TextStyle(color: Colors.white)),
                      activeColor: primaryColor,
                      activeIconColor: primaryColor),
                  BottomBarItem(
                    icon: Icon(Icons.calendar_today_outlined),
                    title: Text('الحجوزات'),
                    activeColor: primaryColor,
                  ),
                  BottomBarItem(
                    icon: Icon(Icons.wallet),
                    title: Text('المحفظة '),
                    activeColor: primaryColor,
                  ),
                  BottomBarItem(
                    icon: Icon(Icons.notifications),
                    title: Text('التنبيهات'),
                    activeColor: primaryColor,
                  ),
                  BottomBarItem(
                    icon: Icon(Icons.more_vert_sharp),
                    title: Text(' '),
                    activeColor: primaryColor,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
