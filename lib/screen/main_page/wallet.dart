
import 'package:flutter/material.dart';

import '../../utility/AppColor.dart';
import '../widgets/wallet_item.dart';

class WALLET extends StatelessWidget {
  const WALLET({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                        Text("\$ 120",
                        style: TextStyle(
                            color: white, fontWeight: FontWeight.bold, fontSize: 20)),
                            Text("الرصيد المتاح",
                                style: TextStyle(
                                    color: white,
                                   
                                    fontSize: 14))
                          ],
                        ),


                      ],
                    ),
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
          Expanded(child: ListView.builder(itemCount: 10,itemBuilder: (context,pos){
            return WalletItem();
          }))
        ]),
      ),
    );
  }
}
