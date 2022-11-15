import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../widget/color_text.dart';

class NotificationCoView extends StatefulWidget {
  const NotificationCoView({Key? key}) : super(key: key);

  @override
  State<NotificationCoView> createState() => _NotificationCoViewState();
}

class _NotificationCoViewState extends State<NotificationCoView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Notification',
                    style: textblack2L,
                  ),
                  const Icon(Icons.search)
                ],
              ).paddingAll(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Today", style: textblackL),
                  2.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 7.h,
                            // width: 14.w,
                            decoration: BoxDecoration(
                                color: const Color(0xffccdbf2),
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
                      // 1.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 68.w,
                            child: Text(
                                "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                                style: textblacks,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2),
                          ),
                          Text("Just now", style: txtblues)
                        ],
                      ),
                      InkWell(
                        child: const Icon(Icons.more_horiz_outlined),
                        onTap: () {
                          _modalBottomSheetMenu();
                        },
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 7.h,
                            width: 14.w,
                            decoration: BoxDecoration(
                                color: const Color(0xffccdbf2),
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
                      // 5.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 68.w,
                            child: Text(
                                "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                                style: textblacks),
                          ),
                          Text("3 hours ago", style: txtblues)
                        ],
                      ),
                      InkWell(
                        child: const Icon(Icons.more_horiz_outlined),
                        onTap: () {
                          _modalBottomSheetMenu();
                        },
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 7.h,
                            // width: 14.w,
                            decoration: BoxDecoration(
                                color: const Color(0xffccdbf2),
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Image.asset(
                              "assets/icons/text.png",
                              scale: 3,
                            ),
                          ),
                          // Positioned(
                          //   left: 30.sp,
                          //   child: Container(
                          //     height: 2.h,
                          //     width: 4.w,
                          //     decoration: BoxDecoration(
                          //       color: Colors.red,
                          //       borderRadius: BorderRadius.circular(10.sp),
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                      // 5.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 68.w,
                            child: Text(
                                "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                                style: textblacks),
                          ),
                        ],
                      ),
                      InkWell(
                        child: const Icon(Icons.more_horiz_outlined),
                        onTap: () {
                          _modalBottomSheetMenu();
                        },
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 7.h,
                            // width: 14.w,
                            decoration: BoxDecoration(
                                color: const Color(0xffccdbf2),
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Image.asset(
                              "assets/icons/info.png",
                              scale: 3,
                            ),
                          ),
                          // Positioned(
                          //   left: 30.sp,
                          //   child: Container(
                          //     height: 2.h,
                          //     width: 4.w,
                          //     decoration: BoxDecoration(
                          //       color: Colors.red,
                          //       borderRadius: BorderRadius.circular(10.sp),
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                      // 5.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 68.w,
                            child: Text(
                                "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                                style: textblacks),
                          ),
                        ],
                      ),
                      InkWell(
                        child: const Icon(Icons.more_horiz_outlined),
                        onTap: () {
                          _modalBottomSheetMenu();
                        },
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 7.h,
                            // width: 14.w,
                            decoration: BoxDecoration(
                                color: const Color(0xffccdbf2),
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Image.asset(
                              "assets/icons/icon1.png",
                              scale: 3,
                            ),
                          ),
                          // Positioned(
                          //   left: 30.sp,
                          //   child: Container(
                          //     height: 2.h,
                          //     width: 4.w,
                          //     decoration: BoxDecoration(
                          //       color: Colors.red,
                          //       borderRadius: BorderRadius.circular(10.sp),
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                      // 5.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 68.w,
                            child: Text(
                                "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                                style: textblacks),
                          ),
                        ],
                      ),
                      InkWell(
                        child: const Icon(Icons.more_horiz_outlined),
                        onTap: () {
                          _modalBottomSheetMenu();
                        },
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 7.h,
                            // width: 14.w,
                            decoration: BoxDecoration(
                                color: const Color(0xffccdbf2),
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Image.asset(
                              "assets/icons/text.png",
                              scale: 3,
                            ),
                          ),
                          // Positioned(
                          //   left: 30.sp,
                          //   child: Container(
                          //     height: 2.h,
                          //     width: 4.w,
                          //     decoration: BoxDecoration(
                          //       color: Colors.red,
                          //       borderRadius: BorderRadius.circular(10.sp),
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                      // 5.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 68.w,
                            child: Text(
                                "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                                style: textblacks),
                          ),
                        ],
                      ),
                      InkWell(
                        child: const Icon(Icons.more_horiz_outlined),
                        onTap: () {
                          _modalBottomSheetMenu();
                        },
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 7.h,
                            // width: 14.w,
                            decoration: BoxDecoration(
                                color: const Color(0xffccdbf2),
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Image.asset(
                              "assets/icons/icon1.png",
                              scale: 3,
                            ),
                          ),
                          // Positioned(
                          //   left: 30.sp,
                          //   child: Container(
                          //     height: 2.h,
                          //     width: 4.w,
                          //     decoration: BoxDecoration(
                          //       color: Colors.red,
                          //       borderRadius: BorderRadius.circular(10.sp),
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                      // 5.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 68.w,
                            child: Text(
                                "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                                style: textblacks),
                          ),
                        ],
                      ),
                      InkWell(
                        child: const Icon(Icons.more_horiz_outlined),
                        onTap: () {
                          _modalBottomSheetMenu();
                        },
                      )
                    ],
                  ),
                ],
              ).pOnly(right: 1.h, left: 2.h),
            ],
          ),
        ),
      ),
    );
  }

  void _modalBottomSheetMenu() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return new Container(
            height: 250.0,
            color: Colors.transparent, //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child: new Container(
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/icons/user_black.png',
                      scale: 1.5,
                    ),
                    Text(
                      'You’ve turned on SMS updates (charges may apply).'
                      ' You can opt out in your notifications settings.',
                      style: texthrays,
                      softWrap: true,
                      textAlign: TextAlign.center,
                    ).paddingOnly(left: 3.w, right: 3.w),
                    Text(
                      'Hide',
                      style: txtblackNormal,
                    ),
                    Text('Remove'),
                    Text('Report')
                  ],
                )),
          );
        });
  }
}
