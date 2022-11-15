import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../widget/color_text.dart';
import '../controllers/profile_controller.dart';

class Profile2View extends GetView<ProfileController> {
  var checkBoxValue = true;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Scaffold(
          // appBar: AppBar(leading: Icon(Icons.arrow_back_sharp)),
          body: SingleChildScrollView(
              child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: constraint.maxHeight),
        child: IntrinsicHeight(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppBar(leading: Icon(Icons.arrow_back_sharp)),
              // Container(
              //   height: 20.h,
              //   width: 60.w,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //         image: AssetImage('assets/images/splash.png'),
              //         fit: BoxFit.cover),
              //   ),
              // ),
              // 1.h.heightBox,
              // SizedBox(
              //   height: 20,
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(TextSpan(
                    children: [
                      TextSpan(
                          text: 'Company Name',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff56616F))),
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            color: Color(0xffEB001B)),
                      ),
                    ],
                  )),
                  // 1.h.heightBox,
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff4DC0C9),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffA5ABB3), width: 0.5),
                      ),
                    ),
                  ),
                  1.h.heightBox,
                  Text.rich(TextSpan(
                    children: [
                      TextSpan(
                          text: 'Account Type',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff56616F))),
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            color: Color(0xffEB001B)),
                      ),
                    ],
                  )),
                  // 1.h.heightBox,
                  TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: const InputDecoration(
                      // suffixIcon: Icon(Icons.visibility),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff4DC0C9),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffA5ABB3), width: 0.5),
                      ),
                    ),
                  ),
                  Text.rich(TextSpan(
                    children: [
                      TextSpan(
                          text: 'PAN Number',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff56616F))),
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            color: Color(0xffEB001B)),
                      ),
                    ],
                  )),
                  // 1.h.heightBox,
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff4DC0C9),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffA5ABB3), width: 0.5),
                      ),
                    ),
                  ),
                  1.h.heightBox,
                  Text.rich(TextSpan(
                    children: [
                      TextSpan(
                          text: 'GST Number',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff56616F))),
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            color: Color(0xffEB001B)),
                      ),
                    ],
                  )),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff4DC0C9),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffA5ABB3), width: 0.5),
                      ),
                    ),
                  ),
                  1.h.heightBox,
                  Text.rich(TextSpan(
                    children: [
                      TextSpan(
                          text: 'Registered Address',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff56616F))),
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            color: Color(0xffEB001B)),
                      ),
                    ],
                  )),
                  TextFormField(
                    keyboardType: TextInputType.streetAddress,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff4DC0C9),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffA5ABB3), width: 0.5),
                      ),
                    ),
                  ),
                  1.h.heightBox,
                  Text.rich(TextSpan(
                    children: [
                      TextSpan(
                          text: 'Company Profile/Description',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff56616F))),
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            color: Color(0xffEB001B)),
                      ),
                    ],
                  )),
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff4DC0C9),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffA5ABB3), width: 0.5),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: checkBoxValue,
                        activeColor: Colors.blue,
                        onChanged: (bool) {
                          Text('Remember me');
                          // setState(() {
                          //   checkBoxValue = newValue;
                          // });
                        },
                      ),
                      Text('Ad Policy')
                    ],
                  ),
                ],
              ).paddingOnly(left: 10, right: 10, bottom: 10),
              Container(
                decoration: BoxDecoration(
                  color: bluebtnclr,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Text(
                  "Submit",
                  style: btntxtWhiteL,
                ).centered().pOnly(top: 2.h, bottom: 2.h),
              ).centered().pOnly(right: 10, left: 10, bottom: 10),
              1.h.heightBox
            ],
          ),
        ),
      )));
    });
  }
}
