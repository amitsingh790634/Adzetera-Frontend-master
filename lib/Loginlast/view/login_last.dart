import 'package:adzetera_frontend/Loginlast/view/last_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../widget/color_text.dart';
import '../login_controller/login_last_controller.dart';

class LastLogin extends GetView<LastLoginController> {
  var checkBoxValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/icons/last.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Text(
            'Login',
            style: txtbig1Black,
          ).paddingOnly(left: 10, right: 10),
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              2.h.heightBox,
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: line2clr),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: line2clr),
                  ),
                  border: InputBorder.none,

                  // disabledBorder: InputBorder.none,
                  hintText: 'Email/Mobile No.',
                  hintStyle: txthrayL,
                ),
              ),
              2.h.heightBox,
            ],
          ).paddingOnly(left: 10, right: 10, bottom: 10),
          InkWell(
            onTap: () => Get.to(lastOtp()),
            child: Container(
              decoration: BoxDecoration(
                color: bluebtnclr,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Text(
                "Get verification code",
                style: btntxtWhiteL,
              ).centered().pOnly(top: 2.h, bottom: 2.h),
            ).centered().pOnly(right: 10, left: 10, bottom: 10),
          ),
          1.h.heightBox
        ],
      ),
    );
  }
}
