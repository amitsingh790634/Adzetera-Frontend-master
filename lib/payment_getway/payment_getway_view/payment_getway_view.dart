import 'package:adzetera_frontend/account/account_controller/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widget/color_text.dart';
import '../payment_getway_controller/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Image.asset(
            "assets/icons/back.png",
            scale: 4,
          ).onTap(() {
            Get.back();
          }),
        ),
        body: Container(
            child: Text("Payment \nGateway", style: txtbigBlack).centered()),
      ),
    );
  }
}
