import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../utility/AppColor.dart';
import '../PROFILE/base_profile.dart';
import '../RESCHUDULE/reschudule.dart';
import 'main_screen.dart';
import 'wallet.dart';

class MainPage extends StatelessWidget {
  int currentIndex = 2;
List<Widget>screens=[MainScreen(),BaseProfile(),WALLET(),RESCHUDULE()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: BottomBar(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
          showActiveBackgroundColor: true,
          selectedIndex: currentIndex,
          itemPadding:
              EdgeInsets.only(top: 10, bottom: 10, right: 16, left: 16),
          onTap: (int index) {
            currentIndex=index;
            if (index == 0) {
            } else if (index == 1) {
            } else if (index == 2) {
            } else if (index == 1) {
            } else if (index == 2) {
            } else if (index == 3) {}
          },
          items: <BottomBarItem>[
            BottomBarItem(
                backgroundColorOpacity: .5,
                icon: Icon(Icons.home),
                title: Text('الرئيسية', style: TextStyle(color: Colors.white)),
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
  }
}
