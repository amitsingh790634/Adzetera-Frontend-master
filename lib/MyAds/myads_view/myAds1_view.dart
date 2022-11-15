import 'package:adzetera_frontend/MyAds/myads_view/myads_view.dart';
import 'package:adzetera_frontend/account/account_controller/account_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../NewCampaign/views/new_campaign_view.dart';
import '../../widget/color_text.dart';
import '../myads_controller/myads_1_controller.dart';
import '../myads_controller/myads_controller.dart';

class MyAdsView1 extends GetView<MyAds1Controller> {
  MyAds1Controller controller = Get.put(MyAds1Controller());
  MyAdsView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
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
                Get.back();
              }),
              child: Image.asset(
                'assets/icons/bar.png',
                scale: 3,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Divider(
              color: line2clr,
              thickness: 1,
            ).pOnly(right: 2.h, left: 2.h),
            GridView.builder(
              itemCount: controller.imageList.length,
              padding: EdgeInsets.all(8),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2.h,
                  mainAxisSpacing: 2.h),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(controller.imageList[index].toString()),
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            )
            // .p(3.h),
          ],
        ),
      ),
    );
  }
}
