import 'package:adzetera_frontend/OrderHistory/controllers/order_history1.controller.dart';
import 'package:adzetera_frontend/widget/color_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class OrderHistory1View extends GetView<OrderHistory1Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Order History', style: apptitle),
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 2.h.heightBox,
          Text(
            '''Placed on sat, 1st May'22, 5:05 pm''',
            style: texthrays,
          ),
          2.h.heightBox,
          Text('13 Items'),
          2.h.heightBox,
          Text('Order Id: 897uhUHSD'),
          1.h.heightBox,
          Row(
            children: [
              Icon(
                Icons.check_circle,
                color: green3Clr,
              ),
              Text('Delivered')
            ],
          ),
          3.h.heightBox,
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: red1Clr),
              // color: bluebtnclr,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Text(
              "View Details",
              style: textRedl,
            ).centered().pOnly(top: 2.h, bottom: 2.h),
          ).centered().pOnly(right: 10, left: 10, bottom: 10),
        ],
      ).paddingAll(10),
    );
  }
}
