import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../utility/AppColor.dart';
import '../widgets/customBut.dart';

class RESCHUDULE extends StatelessWidget {
  const RESCHUDULE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
              currentDay: DateTime.now(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("حدد الوقت المتاح"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: List.generate(
                    15,
                    (index) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                              padding: const EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(.5),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "${index + 1}:00 - ${index + 2}:00",
                                style: TextStyle(color: Colors.white),
                              )),
                        )),
              ),
            ),
        Center(
      child: CustomButton(
      width: size.width*.7,
        color: primaryColor,
        hight: 50,
        onClick: () {},
        text: "ارسال",
      ),  ),  ]),
        ),
      ),
    );
  }
}
