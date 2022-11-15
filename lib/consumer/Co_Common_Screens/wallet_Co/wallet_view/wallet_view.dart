import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../widget/color_text.dart';
import '../wallet_controller/wallet_controller.dart';

class WalletCosView extends GetView<WalletCosController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                leading: InkWell(
                  onTap: () => Get.back(),
                  child: Image.asset(
                    "assets/icons/back.png",
                    scale: 3,
                  ).pOnly(right: 3.h),
                ),
                elevation: 0,
                actions: [
                  Image.asset(
                    'assets/images/user.png',
                    scale: 4,
                  )
                ],
                backgroundColor: appbg,
                centerTitle: true,
              ),
              Text(
                "Hello, User Name",
                style: txtbig2Black,
              ).pOnly(bottom: 2.h),
              Column(
                children: [
                  Container(
                    height: 20.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: bluebtnclr,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("356000.00", style: btntxtWhiteL)
                            .paddingOnly(left: 7.h, top: 5.h),
                        Text("* * * * * * * * * * * *  3565",
                                style: btntxtWhiteL)
                            .paddingOnly(left: 7.h, top: 3.h),
                      ],
                    ),
                  ),
                  2.h.heightBox,
                  Container(
                    width: 20.w,
                    height: 0.5.w,
                    decoration: BoxDecoration(
                      color: lineclr,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ],
              ),
              2.h.heightBox,
              Text(
                "Transaction List",
                style: txtbig2Black,
              ),
              2.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: bluebtnclr),
                    //  padding: const EdgeInsets.all(15),
                    child: Text("All", style: txtWhiteL)
                        .pOnly(right: 2.h, left: 2.h)
                        .centered(),
                  ),
                  Text(
                    "Expenses",
                    style: textblackL,
                  ),
                  Text(
                    "Receives",
                    style: textblackL,
                  ),
                ],
              ),
              3.h.heightBox,
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/icons/down.png",
                            scale: 3,
                          ),
                          1.w.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Today 2:30", style: texthrays),
                              Text("Name", style: textblacks),
                            ],
                          ),
                        ],
                      ),
                      Text("\$345", style: textReds),
                    ],
                  ),
                  2.h.heightBox,
                  Container(
                    width: 90.w,
                    height: 0.5.w,
                    decoration: BoxDecoration(
                      color: lineclr,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ],
              ),
              3.h.heightBox,
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/icons/up.png",
                            scale: 3,
                          ),
                          1.w.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Today 2:30", style: texthrays),
                              Text("Name", style: textblacks),
                            ],
                          ),
                        ],
                      ),
                      Text("\$345", style: textReds),
                    ],
                  ),
                  2.h.heightBox,
                  Container(
                    width: 90.w,
                    height: 0.5.w,
                    decoration: BoxDecoration(
                      color: lineclr,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ],
              ),
              3.h.heightBox,
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/icons/down.png",
                            scale: 3,
                          ),
                          1.w.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Today 2:30", style: texthrays),
                              Text("Name", style: textblacks),
                            ],
                          ),
                        ],
                      ),
                      Text("\$345", style: textReds),
                    ],
                  ),
                  2.h.heightBox,
                  Container(
                    width: 90.w,
                    height: 0.5.w,
                    decoration: BoxDecoration(
                      color: lineclr,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ],
              ),
              3.h.heightBox,
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/icons/up.png",
                            scale: 3,
                          ),
                          1.w.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Today 2:30", style: texthrays),
                              Text("Name", style: textblacks),
                            ],
                          ),
                        ],
                      ),
                      Text("\$345", style: textReds),
                    ],
                  ),
                  2.h.heightBox,
                  Container(
                    width: 90.w,
                    height: 0.5.w,
                    decoration: BoxDecoration(
                      color: lineclr,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ],
              ),
            ],
          ).pOnly(right: 2.h, left: 2.h, bottom: 5.h),
        ),
      ),
    );
  }
}
