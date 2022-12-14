import 'package:flutter/material.dart';

import '../utility/AppColor.dart';
import 'widgets/item_menu_mostchar.dart';

class MenuMostchar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            color: primaryColor,
            image: DecorationImage(
              image: AssetImage(
                "assets/images/allbg2.png",
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
                        width: 20,
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
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: white),
                                Text("120",
                                    style: TextStyle(
                                        color: white,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Text("التقييم",
                                style: TextStyle(
                                  color: white,
                                ))
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
                            Text("120",
                                style: TextStyle(
                                    color: white, fontWeight: FontWeight.bold)),
                            Text("تقييم",
                                style: TextStyle(
                                  color: white,
                                ))
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
                            Text("120",
                                style: TextStyle(
                                    color: white, fontWeight: FontWeight.bold)),
                            Text("استشارة",
                                style: TextStyle(
                                  color: white,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("استخدم الحساب ك",
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: primaryColor),
                        color: white,
                        borderRadius: BorderRadius.circular(10)),
                    height: 40,
                    width: size.width * .7,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: primaryColor),
                                color: white,
                                borderRadius: BorderRadius.circular(10)),
                            height: 40,
                            width: size.width * .34,
                            child: Center(child: Text("مستخدم")),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: primaryColor),
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            height: 40,
                            width: size.width * .34,
                            child: Center(
                                child: Text("مستشار",
                                    style: TextStyle(
                                      color: white,
                                    ))),
                          ),
                        ]),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    height: 1,
                    color: white,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      ItemMenuMostchar(
                        color: white,
                        text: "الحجوزات",
                        imagePath: "assets/images/calendar.png",
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ItemMenuMostchar(
                        color: white,
                        text: "الملف الشخصي",
                        imagePath: "assets/images/profile.png",
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ItemMenuMostchar(
                        color: white,
                        text: "المدونة",
                        imagePath: "assets/images/privacy.png",
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ItemMenuMostchar(
                        color: white,
                        text: "عن التطبيق",
                        imagePath: "assets/images/info.png",
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ItemMenuMostchar(
                        color: white,
                        text: "تواصل معنا",
                        imagePath: "assets/images/contact.png",
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ItemMenuMostchar(
                        color: white,
                        text: "الشروط والاحكام",
                        imagePath: "assets/images/privacy.png",
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Version V 2.0", style: TextStyle(color: white)),
                      Text(
                        "تسجيل خروج",
                        style: TextStyle(color: white),
                      ),
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
