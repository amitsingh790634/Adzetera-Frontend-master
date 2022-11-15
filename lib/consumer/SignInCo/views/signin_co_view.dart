import 'package:adzetera_frontend/CreateAccount/CreateAccountView/create_account_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../CreateAccount/CreateAccountView/create_account2_view.dart';
import '../../../otp/otp_view/otp_view.dart';
import '../../../widget/color_text.dart';
import '../../OtpCo/views/otp_co_view.dart';
import '../controller/signin_co_controller.dart';

class SignInCoView extends GetView<SignInCoController> {
  var checkBoxValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00a8ad),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.h.heightBox,
            Image.asset(
              'assets/images/2.png',
              scale: 1.5,
            ).centered(),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: 'Sign in as a ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: 'Advertiser',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xff0060B9)),
                  ),
                ],
              ),
            ).paddingOnly(left: 10),
            3.h.heightBox,
            Text.rich(TextSpan(
              children: [
                TextSpan(
                    text: 'Phone Number',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.white)),
                TextSpan(
                  text: '*',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Color(0xff145da0)),
                ),
              ],
            )).paddingOnly(left: 10),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 12, 13, 14),
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                focusedBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 14, 15, 15), width: 0.5),
                ),
              ),
            ).paddingOnly(left: 10, right: 10, top: 10, bottom: 10),
            Center(
              child: Text.rich(TextSpan(
                children: [
                  TextSpan(
                      text: 'Alreay have an account?',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff56616F))),
                  const TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: bluebtnclr),
                  ),
                ],
              )),
            ).onTap(() {
              Get.to(CreateAccountView());
            }),
            2.h.heightBox,
            Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(OtpCoView(),
                        transition: Transition.circularReveal,
                        duration: Duration(seconds: 1));
                  },
                  // onTap: () => Navigator.push(context,
                  //     ConcentricPageRoute(builder: (ctx) {
                  //   return OTPScren();
                  // })),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff00a8ad),
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 30)
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Text(
                      "LOGIN ",
                      // as Consumer",
                      style: btntxtWhiteL,
                    ).centered().pOnly(top: 2.h, bottom: 2.h),
                  ).centered().pOnly(right: 10, left: 10),
                ),
                3.h.heightBox,
                // InkWell(
                //   onTap: () => Get.to(SigninView()),
                //   child: Container(
                //     decoration: BoxDecoration(
                //       color: whitebtnclr,
                //       border: Border.all(color: bluebtnclr),
                //       borderRadius: BorderRadius.all(
                //         Radius.circular(20),
                //       ),
                //     ),
                //     child: Text(
                //       "Login as Advertiser",
                //       style: btntxtblackL,
                //     ).centered().pOnly(top: 2.h, bottom: 2.h),
                //   ).centered().pOnly(right: 10, left: 10),
                // ),
              ],
            ),
            25.h.heightBox,
            Column(
              children: [
                Text('By creating an account, you are agreeing to our ',
                    style: TextStyle(color: Color(0xff145da0))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Terms of Service', style: txtWhiteL),
                    2.w.widthBox,
                    Text('and', style: TextStyle(color: Color(0xff145da0))),
                    2.w.widthBox,
                    Text('Privacy Policy', style: txtWhiteL),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(leading: Icon(Icons.arrow_back_sharp)),
    //   body: Column(
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       SizedBox(
    //         height: 10,
    //       ),
    //       Container(
    //         height: 20.h,
    //         width: 60.w,
    //         decoration: BoxDecoration(
    //           image: DecorationImage(
    //               image: AssetImage('assets/images/splash.png'),
    //               fit: BoxFit.cover),
    //         ),
    //       ),
    //       Text.rich(
    //         TextSpan(
    //           children: [
    //             TextSpan(
    //                 text: 'Sign in to ',
    //                 style:
    //                     TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    //             TextSpan(
    //               text: 'Adzetera',
    //               style: TextStyle(
    //                   fontWeight: FontWeight.bold,
    //                   fontSize: 20,
    //                   color: Color(0xff0060B9)),
    //             ),
    //           ],
    //         ),
    //       ).paddingOnly(left: 10),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       Column(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text.rich(TextSpan(
    //             children: [
    //               TextSpan(
    //                   text: 'Email or Phone Number',
    //                   style: TextStyle(
    //                       fontSize: 14,
    //                       fontWeight: FontWeight.normal,
    //                       color: Color(0xff56616F))),
    //               TextSpan(
    //                 text: '*',
    //                 style: TextStyle(
    //                     fontWeight: FontWeight.normal,
    //                     fontSize: 20,
    //                     color: Color(0xffEB001B)),
    //               ),
    //             ],
    //           )),
    //           2.h.heightBox,
    //           TextFormField(
    //             keyboardType: TextInputType.number,
    //             decoration: const InputDecoration(
    //               enabledBorder: OutlineInputBorder(
    //                 borderSide: BorderSide(
    //                   color: Color(0xff4DC0C9),
    //                 ),
    //               ),
    //               focusedBorder: OutlineInputBorder(
    //                 borderSide:
    //                     BorderSide(color: Color(0xffA5ABB3), width: 0.5),
    //               ),
    //             ),
    //           ),
    //           2.h.heightBox,
    //         ],
    //       ).paddingOnly(left: 10, right: 10, bottom: 10),
    //       InkWell(
    //         onTap: () => Get.to(OtpCoView()),
    //         child: Container(
    //           decoration: BoxDecoration(
    //             color: bluebtnclr,
    //             borderRadius: BorderRadius.all(
    //               Radius.circular(20),
    //             ),
    //           ),
    //           child: Text(
    //             "Sign in",
    //             style: btntxtWhiteL,
    //           ).centered().pOnly(top: 2.h, bottom: 2.h),
    //         ).centered().pOnly(right: 10, left: 10, bottom: 10),
    //       ),
    //       Center(
    //         child: Text.rich(TextSpan(
    //           children: [
    //             TextSpan(
    //                 text: 'Alreay have an account?',
    //                 style: TextStyle(
    //                     fontSize: 14,
    //                     fontWeight: FontWeight.normal,
    //                     color: Color(0xff56616F))),
    //             TextSpan(
    //               text: 'Sign Up',
    //               style: TextStyle(
    //                   fontWeight: FontWeight.normal,
    //                   fontSize: 16,
    //                   color: bluebtnclr),
    //             ),
    //           ],
    //         )),
    //       ),
    //       Spacer(),
    //       Center(
    //         child: Container(
    //           width: 90.w,
    //           child: Text.rich(TextSpan(children: [
    //             TextSpan(
    //                 text: 'By creating an account, you are agreeing to our ',
    //                 style: txtblackNormal),
    //             TextSpan(
    //               text: 'Terms of Service ',
    //               style: TextStyle(
    //                   fontWeight: FontWeight.normal,
    //                   fontSize: 14,
    //                   color: Color(0xffEB001B)),
    //             ),
    //             TextSpan(text: 'and ', style: txtblackNormal
    //                 // TextStyle(
    //                 //     fontSize: 14,
    //                 //     fontWeight: FontWeight.normal,
    //                 //     color: Color(0xff56616F))
    //                 ),
    //             TextSpan(
    //               text: 'Privacy Policy',
    //               style: TextStyle(
    //                   fontWeight: FontWeight.normal,
    //                   fontSize: 14,
    //                   color: Color(0xffEB001B)),
    //             ),
    //           ])),
    //         ),
    //       ),
    //       1.h.heightBox
    //     ],
    //   ),
    // );
  }
}
