import 'package:flutter/material.dart';

import '../utility/AppColor.dart';
import 'widgets/appointment_list_item.dart';
import 'widgets/custom_textfiled.dart';
import 'widgets/tab_bar_item.dart';

class Appointment extends StatelessWidget {
  List<String> list = ["القادمة","قيد الانتظار", "السابقة", "مرفوضة" ];
  int index = 0;
    PageController controller = PageController(initialPage: 3);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      //appBar: AppBar(backgroundColor: primaryColor,elevation: 0,title: Text("primaryColor")),
      body: Directionality(textDirection:TextDirection.rtl ,
        child: Column(children: [
          Container(
            width: size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/bg1.png",
                    ),
                    fit: BoxFit.fill)),
            height: 150,
            child: Column(children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    color: white,
                  ),
                  Spacer(),
                  Text("الحجوزات", style: TextStyle(color: white, fontSize: 17)),
                  Spacer()
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16, left: 16),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/filter.png",
                        height: 50,
                        width: 50,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          padding: EdgeInsets.only(right: 8, left: 8),
                          decoration: BoxDecoration(
                              border: Border.all(color: primaryColor),
                              color: white,
                              borderRadius: BorderRadius.circular(25)),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search_rounded),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 15, bottom: 11, top: 11, right: 15),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
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
                  child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: (context, pos) {
                        return AppointmentListItem(
                          pos: 0,
                        );
                      })),
          Container(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, pos) {
                    return AppointmentListItem(
                      pos: 1,
                    );
                  })),
          Container(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, pos) {
                    return AppointmentListItem(
                      pos: 2,
                    );
                  })),
              Container(
                  child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: (context, pos) {
                        return AppointmentListItem(
                          pos: 3,
                        );
                      })),
            ],
          ))
        ]),
      ),
    );
  }



  Future<void> _showMyDialog({required BuildContext context}) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
