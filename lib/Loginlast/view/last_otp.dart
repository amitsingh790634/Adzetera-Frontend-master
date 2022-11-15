import 'package:adzetera_frontend/consumer/OtpCo/controllers/otp_co_controller.dart';
import 'package:adzetera_frontend/widget/bottom_bar2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../widget/color_text.dart';
import '../../Shop/home/view/grocery.dart';

class lastOtp extends GetView<OtpCoController> {
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
            1.h.heightBox,
            Text("Enter your 4-digit code", style: txtbig1Black),
            1.h.heightBox,
            Text("Code", style: texthrayL),
            2.h.heightBox,
            OTPTextField(
                otpFieldStyle: OtpFieldStyle(
                    backgroundColor: whiteclr, borderColor: line2clr),
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
                }),
            3.h.heightBox,
            3.h.heightBox,
            InkWell(
              onTap: () => Get.to(GroceryView()),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: bluebtnclr),
                //  padding: const EdgeInsets.all(15),
                child: Text(
                  "Submit",
                  style: btntxtWhiteL,
                ).centered().p(1.5.h),
              ),
            ).centered(),
            3.h.heightBox,
          ]).paddingOnly(right: 15, left: 15),
        ]),
      ),
    );
  }
}
