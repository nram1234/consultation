import 'package:flutter/material.dart';

import '../utility/AppColor.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        SizedBox(
          height: 30,
        ),
        Image.asset(
          "assets/images/review.png",
          height: size.height * .3,
        ),
        Text("محمد احمد قام بتقييم  استشارتك بنجاح"),
        Padding(
          padding: const EdgeInsets.only(right: 50.0, left: 50,top: 20,bottom: 20),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: gray.withOpacity(.5)),
            height: 40,
            child: Row(children: [
              Spacer(),
              Icon(Icons.star, color: gold),
              SizedBox(
                width: 4,
              ),
              Text("5",
                  style: TextStyle(
                      color: gold, fontSize: 23, fontWeight: FontWeight.bold)),
              Spacer(),
              Text(
                "تقييم الاستشارة",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
              Spacer()
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 60.0,left: 60,top: 0,bottom: 20),
          child: Text(
            "تجربة ممتازه سعيد بالتعامل مع دكتور أحمد شخصية مميزة",
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17),
          ),
        ),
     Text("منذ حوالي 7 أيام") ]),
    ));
  }
}
