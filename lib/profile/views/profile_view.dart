import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widget/color_text.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                toolbarHeight: 13.h,
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: Icon(
                  Icons.arrow_back_sharp,
                  color: Colors.black,
                ),
                // centerTitle: ,
                title: Center(
                  child: CircleAvatar(
                      maxRadius: 6.h,
                      child: Image.asset(
                        'assets/images/user.png',
                        // scale: 2,
                      )),
                ),
              ),
              // Container(
              //   height: 20.h,
              //   width: 60.w,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //         image: AssetImage('assets/images/splash.png'),
              //         fit: BoxFit.cover),
              //   ),
              // ),
              // Text.rich(
              //   TextSpan(
              //     children: [
              //       TextSpan(
              //           text: 'Create Account to ',
              //           style: TextStyle(
              //               fontSize: 20, fontWeight: FontWeight.bold)),
              //       TextSpan(
              //         text: 'Adzetera',
              //         style: TextStyle(
              //             fontWeight: FontWeight.bold,
              //             fontSize: 20,
              //             color: Color(0xff0060B9)),
              //       ),
              //     ],
              //   ),
              // ).paddingOnly(left: 10),
              1.h.heightBox,
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
                          text: 'Name',
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
                          text: 'Mobile Number',
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
                    keyboardType: TextInputType.number,
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
                          text: 'Email',
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
                    keyboardType: TextInputType.number,
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
                          text: 'Address',
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
                    keyboardType: TextInputType.number,
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
                          text: 'City',
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
                    keyboardType: TextInputType.number,
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
                          text: 'Pincode',
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
                    keyboardType: TextInputType.number,
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
                          text: 'State',
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
                    keyboardType: TextInputType.number,
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
                          text: 'Gender',
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
                    keyboardType: TextInputType.number,
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
                      suffixIcon: Icon(Icons.arrow_drop_down, size: 30),
                    ),
                  ),
                  1.h.heightBox,
                  Text.rich(TextSpan(
                    children: [
                      TextSpan(
                          text: 'Date of Birth',
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
                    keyboardType: TextInputType.number,
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
                          text: 'Profession',
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
                    keyboardType: TextInputType.number,
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
                      suffixIcon: Icon(Icons.arrow_drop_down, size: 30),
                    ),
                  ),
                  1.h.heightBox,
                ],
              ).paddingOnly(left: 10, right: 10, bottom: 10),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    color: bluebtnclr,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Next",
                    style: btntxtWhiteL,
                  ).centered().pOnly(top: 2.h, bottom: 2.h),
                ).centered().pOnly(right: 10, left: 10, bottom: 10),
                // onTap: Get.to(CreateAccount2View()) ,
              ),
              1.h.heightBox
            ],
          ),
        ),
      )));
    });
  }
}
