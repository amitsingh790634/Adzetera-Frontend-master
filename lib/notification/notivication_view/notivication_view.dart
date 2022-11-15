import 'package:adzetera_frontend/account/account_controller/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widget/color_text.dart';
import '../notification_controller/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Image.asset("assets/icons/back.png", scale: 4).onTap(() {
            Get.back();
          }),
          title: Text("Notification", style: textblack2L),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Today", style: textblackL),
                  2.h.heightBox,
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 7.h,
                            width: 14.w,
                            decoration: BoxDecoration(
                                color: Color(0xffccdbf2),
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Image.asset(
                              "assets/icons/icon1.png",
                              scale: 3,
                            ),
                          ),
                          Positioned(
                            left: 30.sp,
                            child: Container(
                              height: 2.h,
                              width: 4.w,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10.sp),
                              ),
                            ),
                          )
                        ],
                      ),
                      5.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 71.w,
                            child: Text(
                                "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                                style: textblackL),
                          ),
                          Text("Just now", style: btntxtblues)
                        ],
                      )
                    ],
                  ),
                  2.h.heightBox,
                  Container(
                    height: 0.2.h,
                    width: 90.w,
                    color: lineclr,
                  ).centered(),
                  2.h.heightBox,
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 7.h,
                            width: 14.w,
                            decoration: BoxDecoration(
                                color: Color(0xffccdbf2),
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Image.asset(
                              "assets/icons/info.png",
                              scale: 3,
                            ),
                          ),
                          Positioned(
                            left: 30.sp,
                            child: Container(
                              height: 2.h,
                              width: 4.w,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10.sp),
                              ),
                            ),
                          )
                        ],
                      ),
                      5.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 71.w,
                            child: Text(
                                "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                                style: textblackL),
                          ),
                          Text("3 hours ago", style: btntxtblues)
                        ],
                      )
                    ],
                  )
                ],
              ).pOnly(right: 2.h, left: 2.h),
              2.h.heightBox,
              Divider(
                thickness: 1.w,
              ),
              2.h.heightBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("27 Mar, 2022", style: textblackL),
                  2.h.heightBox,
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 7.h,
                            width: 14.w,
                            decoration: BoxDecoration(
                                color: Color(0xffccdbf2),
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Image.asset(
                              "assets/icons/text.png",
                              scale: 3,
                            ),
                          ),
                          Positioned(
                            left: 30.sp,
                            child: Container(
                              height: 2.h,
                              width: 4.w,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10.sp),
                              ),
                            ),
                          )
                        ],
                      ),
                      5.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 71.w,
                            child: Text(
                                "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                                style: textblackL),
                          ),
                        ],
                      )
                    ],
                  ),
                  2.h.heightBox,
                  Container(
                    height: 0.2.h,
                    width: 90.w,
                    color: lineclr,
                  ).centered(),
                  2.h.heightBox,
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 7.h,
                            width: 14.w,
                            decoration: BoxDecoration(
                                color: Color(0xffccdbf2),
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Image.asset(
                              "assets/icons/info.png",
                              scale: 3,
                            ),
                          ),
                          Positioned(
                            left: 30.sp,
                            child: Container(
                              height: 2.h,
                              width: 4.w,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10.sp),
                              ),
                            ),
                          )
                        ],
                      ),
                      5.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 71.w,
                            child: Text(
                                "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                                style: textblackL),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ).pOnly(right: 2.h, left: 2.h),
              2.h.heightBox,
              Divider(
                thickness: 1.w,
              ),
              2.h.heightBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("25 Mar, 2022", style: textblackL),
                  2.h.heightBox,
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 7.h,
                            width: 14.w,
                            decoration: BoxDecoration(
                                color: Color(0xffccdbf2),
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Image.asset(
                              "assets/icons/icon1.png",
                              scale: 3,
                            ),
                          ),
                          Positioned(
                            left: 30.sp,
                            child: Container(
                              height: 2.h,
                              width: 4.w,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10.sp),
                              ),
                            ),
                          )
                        ],
                      ),
                      5.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 71.w,
                            child: Text(
                                "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                                style: textblackL),
                          ),
                        ],
                      )
                    ],
                  ),
                  2.h.heightBox,
                  Container(
                    height: 0.2.h,
                    width: 90.w,
                    color: lineclr,
                  ).centered(),
                  2.h.heightBox,
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 7.h,
                            width: 14.w,
                            decoration: BoxDecoration(
                                color: Color(0xffccdbf2),
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Image.asset(
                              "assets/icons/text.png",
                              scale: 3,
                            ),
                          ),
                          Positioned(
                            left: 30.sp,
                            child: Container(
                              height: 2.h,
                              width: 4.w,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10.sp),
                              ),
                            ),
                          )
                        ],
                      ),
                      5.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 71.w,
                            child: Text(
                                "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                                style: textblackL),
                          ),
                        ],
                      )
                    ],
                  ),
                  2.h.heightBox,
                  Container(
                    height: 0.2.h,
                    width: 90.w,
                    color: lineclr,
                  ).centered(),
                  2.h.heightBox,
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 7.h,
                            width: 14.w,
                            decoration: BoxDecoration(
                                color: Color(0xffccdbf2),
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Image.asset(
                              "assets/icons/icon1.png",
                              scale: 3,
                            ),
                          ),
                          Positioned(
                            left: 30.sp,
                            child: Container(
                              height: 2.h,
                              width: 4.w,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10.sp),
                              ),
                            ),
                          )
                        ],
                      ),
                      5.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 71.w,
                            child: Text(
                                "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                                style: textblackL),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ).pOnly(right: 2.h, left: 2.h),
            ],
          ),
        ),
      ),
    );
  }
}
