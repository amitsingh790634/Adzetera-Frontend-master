import 'package:adzetera_frontend/consumer/NetworkingCo/views/main_net_co_view.dart';
import 'package:adzetera_frontend/wallet/wallet_view/wallet_view.dart';
import 'package:adzetera_frontend/widget/bottom_bar2.dart';
import 'package:adzetera_frontend/widget/bottom_bar3.dart';
import 'package:adzetera_frontend/widget/color_text.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../products_ads/products_ads_view/products_ads_view.dart';
import '../../widget/bottom_bar.dart';

class OTPScren extends StatefulWidget {
  OTPScren({Key? key}) : super(key: key);

  @override
  State<OTPScren> createState() => _OTPScrenState();
}

class _OTPScrenState extends State<OTPScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
            child: Column(children: [
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: Image.asset(
              "assets/icons/back.png",
              scale: 4,
            ).onTap(() {
              Get.back();
            }),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // 1.h.heightBox,
            Container(
              height: 50.h,
              // width: 90.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/newlogo.png'),
                      fit: BoxFit.cover)),
            ),
            // 10.h.heightBox.centered(),
            Center(
              child: Text(" OTP Verification", style: txtbig1Black),
            ),
            1.h.heightBox,
            Text.rich(
              TextSpan(children: [
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Enter the OTP sent to ', style: textRegularL),
                    TextSpan(text: '+91 9068220575', style: txtblackNormal),
                  ],
                ),
              ]),
            ).centered(),
            2.h.heightBox,
            OTPTextField(
                otpFieldStyle: OtpFieldStyle(
                    backgroundColor: whiteclr, borderColor: Color(0xffA5A5A5)),
                // controller: otpController,
                length: 4,
                width: 60.w,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 50,
                fieldStyle: FieldStyle.box,
                // outlineBorderRadius: 1,
                style: TextStyle(fontSize: 17, color: blackbtnClr),
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  print("Completed: " + pin);
                }).centered(),
            3.h.heightBox,
            Text.rich(TextSpan(
              children: [
                TextSpan(text: 'Didnt you receive the OTP? ', style: texthrayL),
                TextSpan(
                  text: 'Resend OTP.',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: bluebtnclr),
                ),
              ],
            )).centered(),
            3.h.heightBox,
            InkWell(
              onTap: () => Get.to(
                Bottom2(),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff00a8ad),
                  // boxShadow: [
                  //   BoxShadow(color: Colors.black, blurRadius: 30)
                  // ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Text(
                  "Submit ",
                  // as Consumer",
                  style: btntxtWhiteL,
                ).centered().pOnly(top: 2.h, bottom: 2.h),
              ).centered().pOnly(right: 10, left: 10),
            ),
            3.h.heightBox,
            3.h.heightBox,
          ]).paddingOnly(right: 15, left: 15),
        ])));
    // });
    // return Scaffold(
    //   extendBodyBehindAppBar: true,
    //   body: SingleChildScrollView(
    //     child: Column(children: [
    //       AppBar(
    //         elevation: 0,
    //         backgroundColor: Colors.transparent,
    //         leading: Image.asset(
    //           "assets/icons/back.png",
    //           scale: 4,
    //         ).onTap(() {
    //           Get.back();
    //         }),
    //       ),
    //       Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    //         1.h.heightBox,
    //         Center(
    //             child: Image.asset(
    //           'assets/images/otp.png',
    //           scale: 4,
    //         )),
    //         10.h.heightBox.centered(),
    //         Center(
    //           child: Text(" OTP Verification", style: txtbig1Black),
    //         ),
    //         1.h.heightBox,
    //         Text.rich(
    //           TextSpan(children: [
    //             TextSpan(
    //               children: [
    //                 TextSpan(
    //                     text: 'Enter the OTP sent to ', style: textRegularL),
    //                 TextSpan(text: '+91 9068220575', style: txtblackNormal),
    //               ],
    //             ),
    //           ]),
    //         ).centered(),
    //         2.h.heightBox,
    //         OTPTextField(
    //             otpFieldStyle: OtpFieldStyle(
    //                 backgroundColor: whiteclr, borderColor: Color(0xffA5A5A5)),
    //             // controller: otpController,
    //             length: 4,
    //             width: 60.w,
    //             textFieldAlignment: MainAxisAlignment.spaceAround,
    //             fieldWidth: 50,
    //             fieldStyle: FieldStyle.box,
    //             // outlineBorderRadius: 1,
    //             style: TextStyle(fontSize: 17, color: blackbtnClr),
    //             onChanged: (pin) {
    //               print("Changed: " + pin);
    //             },
    //             onCompleted: (pin) {
    //               print("Completed: " + pin);
    //             }).centered(),
    //         3.h.heightBox,
    //         Text.rich(TextSpan(
    //           children: [
    //             TextSpan(text: 'Didnt you receive the OTP? ', style: texthrayL),
    //             TextSpan(
    //               text: 'Resend OTP.',
    //               style:
    //                   TextStyle(fontWeight: FontWeight.bold, color: bluebtnclr),
    //             ),
    //           ],
    //         )).centered(),
    //         3.h.heightBox,
    //         3.h.heightBox,
    //         InkWell(
    //           onTap: () => Get.to(Bottom1()),
    //           child: Container(
    //             height: 7.h,
    //             decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(9), color: bluebtnclr),
    //             //  padding: const EdgeInsets.all(15),
    //             child: Text("Submit", style: btntxtWhiteL).centered(),
    //           ),
    //         ),
    //         3.h.heightBox,
    //       ]).paddingOnly(right: 15, left: 15),
    //     ]),
    //   ),
    // );
  }
}
