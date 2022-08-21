import 'package:flutter/material.dart';

import '../../utility/AppColor.dart';
import '../widgets/customBut.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Container(
          width: size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/bg1.png",
                  ),
                  fit: BoxFit.fill)),
          height: 210,
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  color: white,
                ),
                Spacer(),
                Text(" ", style: TextStyle(color: white, fontSize: 17)),
                Spacer()
              ],
            ),
            IntrinsicHeight(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(" مرحبا, د/ أحمد محمد",
                        style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    Text("التغذيه وعلاج السمنه والنحافة",
                        style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14))
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                      "assets/images/p.png",
                    )),
                  ),
                ),
              ],
            )),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("الرصيد المتاح",
                          style: TextStyle(
                            color: white,
                          )),
                      Text("120\$",
                          style: TextStyle(
                              color: white, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 2,
                  color: Colors.white,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text("التقييمات",
                          style: TextStyle(
                            color: white,
                          )),
                      Text("120",
                          style: TextStyle(
                              color: white, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 2,
                  color: Colors.white,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text("عدد الاستشارات",
                          style: TextStyle(
                            color: white,
                          )),
                      Text("120",
                          style: TextStyle(
                              color: white, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
        SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container( padding: const EdgeInsets.all(4.0),
                  child: Row(children: [
                    Text("لديك طلب استشارة هاتفيه بتاريخ  الساعه 20-4-2021"),
                    Image.asset(
                      "assets/images/info2.png",
                      height: 50,
                      width: 50,
                    )
                  ]),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red.withOpacity(.5)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("استشارتك الحالية"),
              ),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: () {}, child: Text("الغاء")),
                        CustomButton(
                          width: 100,
                          color: primaryColor,
                          text: "ابدا الجلسة",
                          onClick: () {},
                          hight: 30,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
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
