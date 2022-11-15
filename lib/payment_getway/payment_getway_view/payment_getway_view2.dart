import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widget/color_text.dart';
import '../payment_getway_controller/payment_controller2.dart';

class PaymentView2 extends GetView<Payment2Controller> {
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/payment.png",
              scale: 5,
            ),
            Text("Your ads has been posted", style: txthrayL).centered(),
            Text("Successfully!", style: txthrayL).centered()
          ],
        ),
      ),
    );
  }
}
