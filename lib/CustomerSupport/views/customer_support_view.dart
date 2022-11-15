import 'package:adzetera_frontend/CustomerSupport/controllers/customer_support_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Shop/account_shop/view/account_shop_view.dart';
import '../../widget/color_text.dart';

class CustomerSupportView extends GetView<CustomerSupportController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Customer Support', style: apptitle),
        leading: InkWell(
            onTap: () => Get.to(AccountShopView()),
            child: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              child: Text(
                'Payment-related queries',
                style: txtbig2Black,
              ).paddingAll(15),
              decoration: BoxDecoration(color: line2clr),
            ),
            1.h.heightBox,
            Column(
              children: [
                Row(
                  // crossAxisAlignment: Cro,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What forms of payment does business name accept'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
                1.h.heightBox,
                Row(
                  // crossAxisAlignment: Cro,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What forms of payment does business name accept'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
                1.h.heightBox,
                Row(
                  // crossAxisAlignment: Cro,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What forms of payment does business name accept'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
                1.h.heightBox,
                Row(
                  // crossAxisAlignment: Cro,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What forms of payment does business name accept'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
                1.h.heightBox,
                Row(
                  // crossAxisAlignment: Cro,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What forms of payment does business name accept'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                )
              ],
            ),
            Container(
              width: double.maxFinite,
              child: Text(
                'Delivery related queries',
                style: txtbig2Black,
              ).paddingAll(15),
              decoration: BoxDecoration(color: line2clr),
            ),
            1.h.heightBox,
            Column(
              children: [
                Row(
                  // crossAxisAlignment: Cro,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What forms of payment does business name accept'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
                1.h.heightBox,
                Row(
                  // crossAxisAlignment: Cro,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What forms of payment does business name accept'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
                1.h.heightBox,
                Row(
                  // crossAxisAlignment: Cro,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What forms of payment does business name accept'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
                1.h.heightBox,
                Row(
                  // crossAxisAlignment: Cro,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What forms of payment does business name accept'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
                1.h.heightBox,
                Row(
                  // crossAxisAlignment: Cro,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What forms of payment does business name accept'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                )
              ],
            ),
            1.h.heightBox,
            Container(
              width: double.maxFinite,
              child: Text(
                'Cancellation and rescheduling',
                style: txtbig2Black,
              ).paddingAll(15),
              decoration: BoxDecoration(color: line2clr),
            ),
            1.h.heightBox,
            Column(
              children: [
                Row(
                  // crossAxisAlignment: Cro,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What forms of payment does business name accept'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
                1.h.heightBox,
                Row(
                  // crossAxisAlignment: Cro,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What forms of payment does business name accept'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
                1.h.heightBox,
                Row(
                  // crossAxisAlignment: Cro,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What forms of payment does business name accept'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
                1.h.heightBox,
                Row(
                  // crossAxisAlignment: Cro,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What forms of payment does business name accept'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
                1.h.heightBox,
                Row(
                  // crossAxisAlignment: Cro,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('What forms of payment does business name accept'),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                )
              ],
            ),
            4.h.heightBox,
            Container(
                width: double.maxFinite,
                decoration: BoxDecoration(color: green2Clr),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mail_outline_outlined,
                      color: whiteclr,
                    ),
                    2.w.widthBox,
                    Text(
                      'Still need help? Write to us',
                      style: txtWhite,
                    )
                  ],
                ).paddingAll(10))
          ],
        ),
      ),
    );
  }
}
