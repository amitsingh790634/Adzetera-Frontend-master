import 'package:adzetera_frontend/SignIn/SigninView/signin_view.dart';
import 'package:adzetera_frontend/signupfinal/controllers/signup_final_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../otp/otp_view/otp_view.dart';
import '../../widget/color_text.dart';

class SignupFinalView extends GetView<SignupFinalController> {
  @override
  Widget build(BuildContext context) {
    var checkBoxValue = true;
    return Scaffold(
      // backgroundColor: Color(0xff00a8ad),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.h.heightBox,
            Container(
              height: 50.h,
              // width: 90.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/newlogo.png'),
                      fit: BoxFit.cover)),
            ).centered(),
            const Text.rich(TextSpan(
              children: [
                TextSpan(
                    text: 'Name',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: bluebtnclr)),
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
                    color: tealclr,
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                focusedBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: tealclr, width: 0.5),
                ),
              ),
            ).paddingOnly(left: 10, right: 10, top: 10, bottom: 10),
            Text.rich(TextSpan(
              children: [
                TextSpan(
                    text: 'Phone Number',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: bluebtnclr)),
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
                    color: tealclr,
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                focusedBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: tealclr, width: 0.5),
                ),
              ),
            ).paddingOnly(left: 10, right: 10, top: 10, bottom: 10),
            Row(
              children: [
                Checkbox(
                  value: checkBoxValue,
                  activeColor: Colors.blue,
                  onChanged: (bool) {
                    !checkBoxValue;
                    // Text('Remember me');
                    // setState(() {
                    //   checkBoxValue = newValue;
                    // });
                  },
                ),
                Text(
                  'Terms and Conditions',
                  style: txtblues,
                )
              ],
            ),
            // Center(
            //   child: Text.rich(TextSpan(
            //     children: [
            //       TextSpan(
            //           text: 'Alreay have an account?',
            //           style: TextStyle(
            //               fontSize: 14,
            //               fontWeight: FontWeight.normal,
            //               color: Color(0xff56616F))),
            //       const TextSpan(
            //         text: 'Sign In',
            //         style: TextStyle(
            //             fontWeight: FontWeight.normal,
            //             fontSize: 16,
            //             color: bluebtnclr),
            //       ),
            //     ],
            //   )),
            // ).onTap(() {
            //   Get.to(SigninView());
            // }),
            // Text(
            //   "Welcome",
            //   style: txtbigBlack,
            // ).pOnly(left: 10),
            // Text(
            //   "Adzetera:The best multifunctional E-Wallet of our time and more.",
            //   style: TextStyle(color: Colors.white),
            // ).pOnly(left: 10),
            2.h.heightBox,
            Column(
              children: [
                InkWell(
                  onTap: () => Get.to(OTPScren()),
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
                      "SIGNUP ",
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
            // 25.h.heightBox,
            // Column(
            //   children: [
            //     Text('By creating an account, you are agreeing to our ',
            //         style: TextStyle(color: Color(0xff145da0))),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Text('Terms of Service', style: txtWhiteL),
            //         2.w.widthBox,
            //         Text('and', style: TextStyle(color: Color(0xff145da0))),
            //         2.w.widthBox,
            //         Text('Privacy Policy', style: txtWhiteL),
            //       ],
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
