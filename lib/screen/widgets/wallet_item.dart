import 'package:flutter/material.dart';

class WalletItem extends StatelessWidget {
  const WalletItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.3), borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Text("اليوم"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("60\$"), Text("استشارة فيديو ")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("60 دقيقة"), Text("10 AM-11AM")],
            ),
            Divider(
              height: 1,
              thickness: 1,
            )
         ,    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("60\$"), Text("محادثة هاتفية")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("60 دقيقة"), Text("10 AM-11AM")],
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("60\$"), Text("استشارة فيديو ")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("60 دقيقة"), Text("10 AM-11AM")],
            ),
            Divider(
              height: 1,
              thickness: 1,
            ) ]),
        ),
      ),
    );
  }
}
