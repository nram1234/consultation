import 'package:flutter/material.dart';

import '../utility/AppColor.dart';

class SPLASH extends StatelessWidget {
  const SPLASH({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/splash.png")),
      ),
      child: Container(
          color: primaryColor.withOpacity(.5),
          child: Column(
            children: [Spacer(flex: 1),
              Image.asset("assets/images/logo.png"),
              Spacer(flex: 4),  ],
          )),
    );
  }
}
