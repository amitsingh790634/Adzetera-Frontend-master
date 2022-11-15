import 'package:adzetera_frontend/MyAds/myads_view/myAds1_view.dart';
import 'package:adzetera_frontend/account/account_controller/account_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../NewCampaign/views/new_campaign_view.dart';
import '../../widget/color_text.dart';
import '../myads_controller/myads_controller.dart';

class MyAdsView extends GetView<MyAdsController> {
  MyAdsController controller = Get.put(MyAdsController());
  MyAdsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // elevation: 0,
          title: Image.asset(
            'assets/images/newlogo4.png',
            height: 10.h,
            width: 40.w,
            // scale: 15,
            // color: Col,
            color: Colors.white,
            // scale: 10,
            // fit: BoxFit.cover,
          ),
          backgroundColor: tealclr,
          automaticallyImplyLeading: false,
          // leading: Image.asset("assets/icons/back.png", scale: 4).onTap(() {
          //   Get.back();
          // }),
          actions: [
            // Container(
            //   decoration: BoxDecoration(
            //     color: bluebtnclr,
            //     borderRadius: BorderRadius.all(Radius.circular(10)),
            //   ),
            //   child: InkWell(
            //     onTap: (() {
            //       Get.to(() => NewCampaignView());
            //     }),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: [
            //         Image.asset(
            //           "assets/icons/ads.png",
            //           scale: 3,
            //         ),
            //         2.w.widthBox,
            //         Text(
            //           "ADs",
            //           style: txtWhiteL,
            //         )
            //       ],
            //     ).pOnly(right: 4.h, left: 4.h),
            //   ),
            // ).p(1.h),
            InkWell(
              onTap: (() {
                Get.to(() => MyAdsView1());
              }),
              child: Image.asset(
                'assets/icons/bar.png',
                scale: 3,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Divider(
                color: line2clr,
                thickness: 1,
              ).pOnly(right: 2.h, left: 2.h),
              ListView.separated(
                itemCount: controller.imageList.length,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                dragStartBehavior: DragStartBehavior.start,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            color: blackbtnClr.withOpacity(0.2),
                            offset: Offset(0.0, 15.10),
                            blurRadius: 2,
                            spreadRadius: -10)
                      ],
                    ),
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 16.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(
                                      controller.imageList[index].toString()),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            1.h.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    3.w.widthBox,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Campaign Name",
                                            style: textblack2L),
                                        Text("24th May’ 23", style: txthrayL),
                                        Text("\$20", style: txtGreen),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: blackbtnClr,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                  ),
                                  child: Text(
                                    "View",
                                    style: txtWhiteL,
                                  ).pOnly(right: 2.h, left: 2.h).centered(),
                                )
                              ],
                            ).pOnly(right: 2.h, left: 1.h),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: 5.h,
                ),
                // 2.h.heightBox
              ).paddingSymmetric(horizontal: 20)
            ],
          ),
        ),
      ),
    );
  }
}
