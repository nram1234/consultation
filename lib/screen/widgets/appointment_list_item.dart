import 'package:flutter/material.dart';

import '../../utility/AppColor.dart';
import 'customBut.dart';

class AppointmentListItem extends StatelessWidget {
int pos;

AppointmentListItem({required this.pos});

  @override
  Widget build(BuildContext context) {

    switch (pos) {
      case 0:
        return
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              item(
                  imagePath: "assets/images/user.png",
                  data: "uihuhhu",
                  titel: "اسم المستخدم"),
              item(
                  imagePath: "assets/images/calendar.png",
                  data: "20 July 2021",
                  titel: "تاريخ الحجز"),
              item(
                  imagePath: "assets/images/clock.png",
                  data: "12:00-13:00",
                  titel: "موعد الاستشارة"),
              item(
                  imagePath: "assets/images/clock.png",
                  data: "محادثة فيديو",
                  titel: "نوع الاستشارة"),
              item(
                  imagePath: "assets/images/money.png",
                  data: "100",
                  titel: "سعر الاستشارة"),

            ],
          ),
        );
      case 1:
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              item(
                  imagePath: "assets/images/user.png",
                  data: "uihuhhu",
                  titel: "اسم المستخدم"),
              item(
                  imagePath: "assets/images/calendar.png",
                  data: "20 July 2021",
                  titel: "تاريخ الحجز"),
              item(
                  imagePath: "assets/images/clock.png",
                  data: "12:00-13:00",
                  titel: "موعد الاستشارة"),
              item(
                  imagePath: "assets/images/clock.png",
                  data: "محادثة فيديو",
                  titel: "نوع الاستشارة"),
              item(
                  imagePath: "assets/images/money.png",
                  data: "100",
                  titel: "سعر الاستشارة"), Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10),
                child: Text(
                  "- " * 100,
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              ),
              Align(alignment: Alignment.bottomRight,child: CustomButton(width: 100,color: primaryColor,text: "مشاهدة",onClick: (){},hight: 30,))
            ],
          ),
        );
    
      case 2:
    return
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          item(
              imagePath: "assets/images/user.png",
              data: "uihuhhu",
              titel: "اسم المستخدم"),
          item(
              imagePath: "assets/images/calendar.png",
              data: "20 July 2021",
              titel: "تاريخ الحجز"),
          item(
              imagePath: "assets/images/clock.png",
              data: "12:00-13:00",
              titel: "موعد الاستشارة"),
          item(
              imagePath: "assets/images/clock.png",
              data: "محادثة فيديو",
              titel: "نوع الاستشارة"),
          item(
              imagePath: "assets/images/money.png",
              data: "100",
              titel: "سعر الاستشارة"),
          Padding(
            padding: const EdgeInsets.only(right: 10.0, left: 10),
            child: Text(
              "- " * 100,
              overflow: TextOverflow.clip,
              maxLines: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0,left: 20),
            child: Row(
              children: [
                Text("إعادة جدولة"),
                SizedBox(
                  width: 4,
                ),
                Image.asset(
                  "assets/images/refresh.png",
                  color: Colors.grey,
                  height: 20,
                  width: 20,
                ),
                Spacer(), Text("رفض"),
                SizedBox(
                  width: 4,
                ),
                Image.asset(
                  "assets/images/error.png",
                  color: Colors.grey,
                  height: 20,
                  width: 20,
                ) , Spacer(), Text("قبول"),
                SizedBox(
                  width: 4,
                ),
                Image.asset(
                  "assets/images/check.png",
                  color: Colors.grey,
                  height: 20,
                  width: 20,
                ) ],
            ),
          )
        ],
      ),
    );
      case 3:
     return   Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
         children: [
           item(
               imagePath: "assets/images/user.png",
               data: "uihuhhu",
               titel: "اسم المستخدم"),
           item(
               imagePath: "assets/images/calendar.png",
               data: "20 July 2021",
               titel: "تاريخ الحجز"),
           item(
               imagePath: "assets/images/clock.png",
               data: "12:00-13:00",
               titel: "موعد الاستشارة"),
           item(
               imagePath: "assets/images/clock.png",
               data: "محادثة فيديو",
               titel: "نوع الاستشارة"),
           item(
               imagePath: "assets/images/money.png",
               data: "100",
               titel: "سعر الاستشارة"),
           Padding(
             padding: const EdgeInsets.only(right: 10.0, left: 10),
             child: Text(
               "- " * 100,
               overflow: TextOverflow.clip,
               maxLines: 1,
             ),
           ),
           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [ TextButton(onPressed: (){}, child: Text("الغاء")), CustomButton(width: 100,color: primaryColor,text: "مشاهدة",onClick: (){},hight: 30,)],)
         ],
       ),
     );
      default:
        {
          return Container();
        }
    }






  }

  Widget item(
      {required String imagePath,
      required String titel,
      required String data}) {
    return Row(
      children: [
        Expanded(
            flex: 4,
            child: Text(
              data,
              textAlign: TextAlign.end,
            )),
        Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                titel,
                textAlign: TextAlign.end,
              ),
            )),
        Expanded(
          child: Image.asset(
            imagePath,
            color: Colors.grey,
            height: 20,
            width: 20,
          ),
        ),
      ],
    );
  }





}
