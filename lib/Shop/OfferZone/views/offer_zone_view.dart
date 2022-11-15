import 'package:adzetera_frontend/Shop/OfferZone/controllers/offer_zone_controller.dart';
import 'package:adzetera_frontend/widget/color_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OfferZoneView extends GetView<OfferZoneController> {
  OfferZoneController controller1 = Get.put(OfferZoneController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  2.h.heightBox,
                  Text(
                    'Offer Zone',
                    style: textblack2L,
                  ),
                  1.h.heightBox,
                  Text("The best of offers on everyday essentials for you ")
                ],
              ),
              2.h.heightBox,
              Container(
                height: 30.h,
                color: Colors.amberAccent[100],
              ),
              2.h.heightBox,
              Text(
                "Bank & wallet offers",
                style: textblack2L,
              ),
              2.h.heightBox,
              Container(
                height: 20.h,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                // color: Colors.black,
                // flex: 1,
                child: ListView.builder(
                    itemCount: controller.colorList.length,
                    scrollDirection: Axis.horizontal,
                    // physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: controller.colorList[index]),
                              borderRadius: BorderRadius.circular(10),
                              color: controller.colorList[index]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'flat 10% off',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ).paddingAll(10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'no min txn',
                                    style: txtWhite,
                                  ),
                                  Text.rich(TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'Code :',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white)),
                                      TextSpan(
                                        text: 'Money Tap',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14,
                                            color: Colors.yellowAccent),
                                      ),
                                    ],
                                  )),
                                ],
                              ).paddingOnly(left: 10),
                              Container(
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10)),
                                    color: Colors.white),
                                // height: 10,
                                // color: Colors.white,
                                child: Text('Bank Logo').paddingOnly(
                                    left: 2.w, top: 1.h, bottom: 1.h),
                              )
                            ],
                          ),
                          // height: 4.h,
                          width: 35.w,
                          // color: Colors.lightBlue,
                          // child:
                          // Image.asset(
                          //   controller.imgList[index],
                          //   scale: 2.6,
                          // ),
                        ),
                        borderOnForeground: true,
                        // elevation: 10,

                        // margin: EdgeInsets.all(5),
                        // surfaceTintColor: Colors.amber,
                      );
                    }),
              ),
              Text(
                "Trending Offer",
                style: textblack2L,
              ),
              // 3.h.heightBox,
              5.h.heightBox,
              Container(
                  height: 35.h,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        // childAspectRatio: .7,
                        crossAxisSpacing: 5,
                        mainAxisExtent: 15.h,
                        mainAxisSpacing: 6.h),
                    itemCount: 6,
                    clipBehavior: Clip.none,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        clipBehavior: Clip.none,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            // 10.h.heightBox,
                            Positioned(
                                // top: 30,
                                // left: 3.h,
                                bottom: 10.h,
                                left: 3.h,
                                child: Container(
                                    // height: 4.h,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color: line2clr,
                                              offset: (Offset(2, 2)),
                                              blurRadius: 2)
                                        ]),
                                    child: CircleAvatar(
                                      radius: 4.h,
                                      backgroundColor: Colors.transparent,
                                      child: Image.asset(
                                        controller1.imgList1[index],
                                        scale: 3.3,
                                        // scale: 2.6,
                                      ),
                                    ))),
                            GridTile(
                              footer: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5)),
                                    color: green2Clr,
                                  ),
                                  height: 3.h,
                                  child: Center(
                                      child: Text(
                                    'up to 50% OFF',
                                    style: txtWhite,
                                  ))),
                              child: Text(""),
                              // Positioned(
                              //     bottom: 20,
                              //     child: Image.asset(
                              //       controller.imgList[index],
                              //       scale: 2.6,
                              //     ))
                              //     ),
                            )
                          ],
                        ),
                        borderOnForeground: true,
                        elevation: 10,
                        // margin: EdgeInsets.all(5),
                        // surfaceTintColor: Colors.amber,
                      );
                    },
                  )),
              2.h.heightBox,
              Container(
                height: 30.h,
                width: double.maxFinite,
                color: Colors.deepPurple[200],
                child: Center(
                    child: Text(
                  'Best Deal Banner',
                  style: txtbigBlack,
                )),
              ),
              2.h.heightBox,
              Container(
                height: 15.h,
                // color: Colors.amber,
                child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    // padding: EdgeInsets.all(10),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 10.h,
                        width: context.width,
                        color: Colors.blueAccent[200],
                        child: Text(
                          'Check Banner',
                          style: txtbigBlack,
                        ).centered(),
                      ).paddingAll(10);
                    }),
              ),
              Container(
                height: 25.h,
                color: Colors.purple[200],
                child: Text(
                  'Discount Banner',
                  style: txtbigBlack,
                ).centered(),
              )
            ],
          ).paddingAll(10),
        ),
        //     Container(
        //   height: 50,
        //   color: Colors.amber,
        // )
      ),
    );
  }
}
