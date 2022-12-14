
import 'package:flutter/material.dart';

import '../../utility/AppColor.dart';
import '../widgets/bottom_sheet_item.dart';
import '../widgets/customBut.dart';
import '../widgets/custom_textfiled.dart';

class Profile2 extends StatelessWidget {
  const Profile2 ({Key? key}) : super(key: key);

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
                "assets/images/allbg.png",
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Builder(builder: (context) {
                  return Padding(
                    padding:
                    const EdgeInsets.only(top: 16.0, right: 16, left: 16),
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15)),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Center(child: Text("انشاء حساب")),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    selectFile(size: size, context: context);
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("ارفع صوره شخصية"),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Image.asset(
                                        "assets/images/pic.png",
                                        color: primaryColor,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Text("نوع التخصص"),
                              Container(
                                width: size.width,
                                padding: EdgeInsets.only(right: 8, left: 8),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    color: white,
                                    borderRadius: BorderRadius.circular(25)),
                                child: DropdownButton<String>(
                                  value: null,
                                  icon: const Icon(Icons.arrow_downward),
                                  elevation: 16,
                                  style:
                                  const TextStyle(color: Colors.deepPurple),
                                  underline: SizedBox(),
                                  onChanged: (String? newValue) {},
                                  items: <String>['One', 'Two', 'Free', 'Four']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("سنوات الخبرة"),
                              Container(
                                width: size.width,
                                padding: EdgeInsets.only(right: 8, left: 8),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primaryColor),
                                    color: white,
                                    borderRadius: BorderRadius.circular(25)),
                                child: DropdownButton<String>(
                                  value: null,
                                  icon: const Icon(Icons.arrow_downward),
                                  elevation: 16,
                                  style:
                                  const TextStyle(color: Colors.deepPurple),
                                  underline: SizedBox(),
                                  onChanged: (String? newValue) {},
                                  items: <String>['One', 'Two', 'Free', 'Four']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomTextFiled(
                                  text: "نبذه عن التعليم", maxLines: 6),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(onTap:(){
                                  selectFile(context: context,size: size);
                                } ,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("ارفع صور للشهادات  العلميه"),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Image.asset(
                                        "assets/images/pic.png",
                                        color: primaryColor,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomTextFiled(
                                  text: "نبذه عن الخبرات السابقة", maxLines: 6),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(onTap:(){
                                  selectFile(context: context,size: size);
                                } ,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("ارفع صور لشهادات  الخبرة"),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Image.asset(
                                        "assets/images/pic.png",
                                        color: primaryColor,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              CustomButton(
                                width: size.width,
                                color: primaryColor,
                                hight: 50,
                                onClick: () {},
                                text: "انهاء",
                              ),
                            ],
                          ),
                        )),
                  );
                }),
              ),

              SizedBox(
                height: 8,
              )
            ],
          ),
        ),
      ),
    );
  }

  selectFile({required Size size, required context}) {
    return showModalBottomSheet(
        enableDrag: true,
        isDismissible: true,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            color: Colors.transparent,
            child: Column(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.clear))),
                Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.vertical(top: Radius.circular(15)),
                          color: Colors.white),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width * .2,
                            height: 1,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BottomSheetItem(text:"الصور" ,imagePath: "assets/images/gallery.png"),
                            BottomSheetItem(text:"المستندات" ,imagePath: "assets/images/file.png"),
                            BottomSheetItem(text:"الكاميرا" ,imagePath: "assets/images/camera.png"),
                          ],
                        )
                      ]),
                    ))
              ],
            ),
          );
        });
  }
}
