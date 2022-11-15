import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../widget/color_text.dart';
import '../controllers/signup_co_controller.dart';

class SignupCoView extends GetView<SignupCoController> {
  var checkBoxValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_sharp)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 20.h,
            width: 60.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/splash.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Sign in to ',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                TextSpan(
                  text: 'Adzetera',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xff0060B9)),
                ),
              ],
            ),
          ).paddingOnly(left: 10),
          SizedBox(
            height: 20,
          ),
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
              2.h.heightBox,
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
              2.h.heightBox,
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
              2.h.heightBox,
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
              "Sign Up",
              style: btntxtWhiteL,
            ).centered().pOnly(top: 2.h, bottom: 2.h),
          ).centered().pOnly(right: 10, left: 10, bottom: 10),
          Center(
            child: Text.rich(TextSpan(
              children: [
                TextSpan(
                    text: 'Alreay have an account?',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff56616F))),
                TextSpan(
                  text: 'Sign In',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: bluebtnclr),
                ),
              ],
            )),
          ),
          Spacer(),
          Center(
            child: Container(
              width: 90.w,
              child: Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'By creating an account, you are agreeing to our ',
                    style: txtblackNormal
                    //  TextStyle(
                    //     fontSize: 14,
                    //     fontWeight: FontWeight.normal,
                    //     color: Color(0xff56616F))

                    ),
                TextSpan(
                  text: 'Terms of Service ',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Color(0xffEB001B)),
                ),
                TextSpan(text: 'and ', style: txtblackNormal
                    // TextStyle(
                    //     fontSize: 14,
                    //     fontWeight: FontWeight.normal,
                    //     color: Color(0xff56616F))
                    ),
                TextSpan(
                  text: 'Privacy Policy',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Color(0xffEB001B)),
                ),
              ])),
            ),
          ),
          1.h.heightBox
        ],
      ),
    );
  }
}
