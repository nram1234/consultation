
import 'package:consultation/screen/PROFILE/profile1.dart';
import 'package:consultation/screen/PROFILE/profile2.dart';
import 'package:consultation/screen/PROFILE/profile3.dart';
import 'package:flutter/material.dart';

import '../../utility/AppColor.dart';
import '../widgets/profile3_item.dart';
import '../widgets/tab_bar_item.dart';

class BaseProfile extends StatelessWidget {
  List<String> list = [  "انواع الاستشارة", "الشهادات والخبرات", "البيانات الشخصية"];
  int index = 2;
  PageController controller = PageController(initialPage: 2);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Directionality(textDirection: TextDirection.rtl,
      child: Scaffold(
        //appBar: AppBar(backgroundColor: primaryColor,elevation: 0,title: Text("primaryColor")),
        body: Column(children: [
          Container(
            width: size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/bg1.png",
                    ),
                    fit: BoxFit.fill)),
            height: 100,
            child: Column(children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  // Icon(
                  //   Icons.arrow_back_ios_new,
                  //   color: white,
                  // ),
                  Spacer(),
                  Text("الملف الشخصي", style: TextStyle(color: white, fontSize: 17)),
                  Spacer()
                ],
              ),

            ]),
          ),
          Row(
              children: List<Widget>.generate(list.length, (int index) {
                return TabBarItem(
                  text: list[index],
                  isActive: this.index == index,
                  function: () {
                    controller.animateToPage(index,
                        curve: Curves.bounceInOut,
                        duration: Duration(milliseconds: 200));
                  },
                );
              })
            // [
            //   Expanded(
            //     child: Column(
            //       children: [
            //         Text('11'),
            //         Container(
            //           width: size.width,
            //           height: 2,
            //           color: primaryColor,
            //         )
            //       ],
            //     ),
            //   ),
            //   Expanded(
            //     child: Column(
            //       children: [
            //         Text('11'),
            //         Container(
            //           width: size.width,
            //           height: 2,
            //           color: primaryColor,
            //         )
            //       ],
            //     ),
            //   ),
            //   Expanded(
            //     child: Column(
            //       children: [
            //         Text('11'),
            //         Container(
            //           width: size.width,
            //           height: 2,
            //           color: primaryColor,
            //         )
            //       ],
            //     ),
            //   ),
            //   Expanded(
            //     child: Column(
            //       children: [
            //         Text('11'),
            //         Container(
            //           width: size.width,
            //           height: 2,
            //           color: primaryColor,
            //         )
            //       ],
            //     ),
            //   )
            // ]

          ),
          Expanded(
              child: PageView(
                /// [PageView.scrollDirection] defaults to [Axis.horizontal].
                /// Use [Axis.vertical] to scroll vertically.
                controller: controller,
                onPageChanged: (pos) {
                  index = pos;
                  print(index);
                },
                children: <Widget>[
                  Container(
                      child: Profile3()),
                  Container(
                      child: Profile2()),
                  Container(
                      child:PROFILE1()),

                ],
              ))
        ]),
      ),
    );
  }
}
