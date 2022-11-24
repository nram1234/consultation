import 'package:flutter/material.dart';

import '../../cubit/appointment_cubit/appointment_cubit.dart';
import '../../net/model/reservation_model.dart';
import '../../utility/AppColor.dart';
import 'customBut.dart';

class AppointmentListItem extends StatelessWidget {
  int pos;
  Reservaions reservaions;
  final VoidCallback fun1;
  final VoidCallback fun2;
  AppointmentListItem({required this.pos,required this.reservaions,required this.fun1,required this.fun2});

  @override
  Widget build(BuildContext context) {
    AppointmentCubit cubit = AppointmentCubit.get(context);
    switch (pos) {
      case 3:
        return Card(elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                item(
                    imagePath: "assets/images/user.png",
                    data:reservaions.date!,
                    titel:reservaions.consultantName!),
                item(
                    imagePath: "assets/images/calendar.png",
                    data: reservaions.date!,
                    titel: "تاريخ الحجز"),
                item(
                    imagePath: "assets/images/clock.png",
                    data: "${reservaions.timeFrom} - ${reservaions.timeTo}",
                    titel: "موعد الاستشارة"),
                item(
                    imagePath: "assets/images/clock.png",
                    data: reservaions.type!,
                    titel: "نوع الاستشارة"),
                item(
                    imagePath: "assets/images/money.png",
                    data: reservaions.cost.toString(),
                    titel: "سعر الاستشارة"),
              ],
            ),
          ),
        );
      case 2:
        return Card(elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                item(
                    imagePath: "assets/images/user.png",
                    data:reservaions.date!,
                    titel:reservaions.consultantName!),
                item(
                    imagePath: "assets/images/calendar.png",
                    data: reservaions.date!,
                    titel: "تاريخ الحجز"),
                item(
                    imagePath: "assets/images/clock.png",
                    data: "${reservaions.timeFrom} - ${reservaions.timeTo}",
                    titel: "موعد الاستشارة"),
                item(
                    imagePath: "assets/images/clock.png",
                    data: reservaions.type!,
                    titel: "نوع الاستشارة"),
                item(
                    imagePath: "assets/images/money.png",
                    data: reservaions.cost.toString(),
                    titel: "سعر الاستشارة"),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 10),
                  child: Text(
                    "- " * 100,
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                  ),
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: CustomButton(
                      width: 100,
                      color: primaryColor,
                      text: "مشاهدة",
                      onClick: () {},
                      hight: 30,
                    ))
              ],
            ),
          ),
        );

      case 1:
        return Card(elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                item(
                    imagePath: "assets/images/user.png",
                    data:reservaions.date!,
                    titel:reservaions.consultantName!),
                item(
                    imagePath: "assets/images/calendar.png",
                    data: reservaions.date!,
                    titel: "تاريخ الحجز"),
                item(
                    imagePath: "assets/images/clock.png",
                    data: "${reservaions.timeFrom} - ${reservaions.timeTo}",
                    titel: "موعد الاستشارة"),
                item(
                    imagePath: "assets/images/clock.png",
                    data: reservaions.type!,
                    titel: "نوع الاستشارة"),
                item(
                    imagePath: "assets/images/money.png",
                    data: reservaions.cost.toString(),
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
                  padding: const EdgeInsets.only(right: 20.0, left: 20),
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
                      Spacer(),
                      cubit.sendreject==false?     GestureDetector(onTap: (){
                        fun2();
                      },child: Text("رفض")):Center(child: CircularProgressIndicator()),
                      SizedBox(
                        width: 4,
                      ),
                      Image.asset(
                        "assets/images/error.png",
                        color: Colors.grey,
                        height: 20,
                        width: 20,
                      ),
                      Spacer(),
                      cubit.sendaccept==false?      GestureDetector(onTap: (){
                        fun1();
                      },child: Text("قبول")):Center(child: CircularProgressIndicator()),
                      SizedBox(
                        width: 4,
                      ),
                      Image.asset(
                        "assets/images/check.png",
                        color: Colors.grey,
                        height: 20,
                        width: 20,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      case 0:
        return
          Card(elevation: 5,
            child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                item(
                    imagePath: "assets/images/user.png",
                    data:reservaions.date!,
                    titel:reservaions.consultantName!),
                item(
                    imagePath: "assets/images/calendar.png",
                    data: reservaions.date!,
                    titel: "تاريخ الحجز"),
                item(
                    imagePath: "assets/images/clock.png",
                    data: "${reservaions.timeFrom} - ${reservaions.timeTo}",
                    titel: "موعد الاستشارة"),
                item(
                    imagePath: "assets/images/clock.png",
                    data: reservaions.type!,
                    titel: "نوع الاستشارة"),
                item(
                    imagePath: "assets/images/money.png",
                    data: reservaions.cost.toString(),
                    titel: "سعر الاستشارة"),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 10),
                  child: Text(
                    "- " * 100,
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    CustomButton(
                      width: 100,
                      color: primaryColor,
                      text: "ابدا الجلسة",
                      onClick: () {
                        fun1();
                      },
                      hight: 30,
                    )
                ,   TextButton(onPressed: () {
                      fun2();
                    }, child: Text("الغاء")),  ],
                )
              ],
            ),
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
