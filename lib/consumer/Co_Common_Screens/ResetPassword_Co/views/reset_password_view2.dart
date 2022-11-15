import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../widget/color_text.dart';
import '../controllers/reset_password_controller2.dart';

class RestPasswordCosView2 extends GetView<ResetPassword2CosController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Password Reset",
            style: txtbig1Black,
          ),
          5.h.heightBox,
          Image.asset(
            'assets/images/reset.png',
            scale: 5,
          ),
          5.h.heightBox,
          Text(
            'Your password has been reset',
            style: txthrayL,
          ),
          Text(
            'Successfully!',
            style: txthrayL,
          ),
          5.h.heightBox
        ],
      ).centered()),
    );
  }
}
