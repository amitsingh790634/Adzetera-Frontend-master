import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widget/color_text.dart';
import '../products_ads_controller/ads_view_controller.dart';

class AdsView extends GetView<AdsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                elevation: 0,
                iconTheme: IconThemeData(
                  color: Colors.black, //change your color here
                ),
                backgroundColor: appbg,
                centerTitle: true,
              ),
              Column(
                children: [
                  Image.asset("assets/images/products_ads.png"),
                ],
              ),
              3.h.heightBox,
              Text(
                "Product Details",
                style: txtbigBlack,
              ),
              Container(
                width: 50.w,
                child: Divider(
                  thickness: 4,
                  color: blackbtnClr,
                ),
              ),

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Campeign Name",
                        style: textblackL,
                      ),
                      Image.asset("assets/icons/des.png"),
                      SizedBox(
                        width: 40.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Campeign Name",
                              hintStyle: textblackL),
                        ),
                      )
                    ],
                  ),

                  // second Row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Ad Type",
                        style: textblackL,
                      ),
                      10.w.widthBox,
                      Image.asset("assets/icons/des.png"),
                      SizedBox(
                        width: 40.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Ad Type",
                              hintStyle: textblackL),
                        ),
                      )
                    ],
                  ),

                  // third row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Add Preview \nBalancee ",
                        style: textblackL,
                      ),
                      0.2.w.widthBox,
                      Image.asset("assets/icons/des.png"),
                      SizedBox(
                        width: 40.w,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(right: 30),
                              // EdgeInsets.symmetric(vertical: 10),
                              hintMaxLines: 2,
                              border: InputBorder.none,
                              hintText: "Add Preview Balance",
                              hintStyle: textblackL),
                        ),
                      )
                    ],
                  ),

                  // 4th row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Balance Payable",
                        style: textblackL,
                      ),
                      Image.asset("assets/icons/des.png"),
                      SizedBox(
                        width: 40.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Balance Payable",
                              hintStyle: textblackL),
                        ),
                      )
                    ],
                  ),

                  // 5th row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "GST Number",
                        style: textblackL,
                      ),
                      3.w.widthBox,
                      Image.asset("assets/icons/des.png"),
                      SizedBox(
                        width: 40.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "GST Number",
                              hintStyle: textblackL),
                        ),
                      )
                    ],
                  ),

                  // 6th row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Product/Services",
                        style: textblackL,
                      ),
                      Image.asset("assets/icons/des.png"),
                      SizedBox(
                        width: 40.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Product/Services",
                              hintStyle: textblackL),
                        ),
                      )
                    ],
                  ),

                  // 7th row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Target Region",
                        style: textblackL,
                      ),
                      3.w.widthBox,
                      Image.asset("assets/icons/des.png"),
                      SizedBox(
                        width: 40.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Target Region",
                              hintStyle: textblackL),
                        ),
                      )
                    ],
                  ),

                  // 8th row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Target Age",
                        style: textblackL,
                      ),
                      9.w.widthBox,
                      Image.asset("assets/icons/des.png"),
                      SizedBox(
                        width: 40.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Target Age",
                              hintStyle: textblackL),
                        ),
                      )
                    ],
                  ),
                  // 9th row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Start Date",
                        style: textblackL,
                      ),
                      9.w.widthBox,
                      Image.asset("assets/icons/des.png"),
                      SizedBox(
                        width: 40.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Start Date",
                              hintStyle: textblackL),
                        ),
                      )
                    ],
                  ),

                  // 10th row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "End Date",
                        style: textblackL,
                      ),
                      9.w.widthBox,
                      Image.asset("assets/icons/des.png"),
                      SizedBox(
                        width: 40.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "End Date",
                              hintStyle: textblackL),
                        ),
                      )
                    ],
                  ),
                ],
              ).pOnly(left: 20, bottom: 5.h),
              // Container(
              //   width: 40.w,
              //   height: 2.w,
              //   decoration: BoxDecoration(
              //     color: bluebtnclr,
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              // ),
              // 3.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
