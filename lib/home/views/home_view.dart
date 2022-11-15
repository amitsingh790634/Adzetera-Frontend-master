import 'package:adzetera_frontend/consumer/Co_Common_Screens/account_co/account_view/account_view2.dart';
import 'package:adzetera_frontend/consumer/NetworkingCo/views/profile_co_view.dart';
import 'package:adzetera_frontend/profile/views/profile2_view.dart';
import 'package:adzetera_frontend/widget/bottom_bar2.dart';
import 'package:adzetera_frontend/widget/color_text.dart';
import 'package:concentric_transition/page_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../NewCampaign/views/new_campaign2_view.dart';
import '../../account/account_view/account_view2.dart';
import '../controllers/home_controller.dart';
import 'campaign_details_view.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                backgroundColor: tealclr,
                automaticallyImplyLeading: false,
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
                // centerTitle: true,
                actions: [
                  InkWell(
                    onTap: () => Get.to(Bottom2(),
                        transition: Transition.cupertino,
                        duration: Duration(seconds: 2),
                        curve: Curves.easeOutSine),
                    // onTap: (_) {}
                    //  Navigator.push(
                    //     context,
                    //     ConcentricPageRoute(
                    //         builder: (ctx) {
                    //           return Bottom2();
                    //         },
                    //         fullscreenDialog: true,
                    //         maintainState: false)),

                    // Get.to(
                    //   Bottom2(),
                    // ),
                    child: Center(
                      child: Text(
                        'Home',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ).paddingOnly(right: 10)
                ]),
            body: Column(
              children: [
                // Container(
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text(
                //         'Dashboard',
                //         style: btntxtblackL,
                //       ),
                //       Row(
                //         children: [
                //           // Image.asset(
                //           //   'assets/icons/head.png',
                //           //   scale: 4,
                //           // ),
                //           3.w.widthBox,
                // InkWell(
                //   onTap: () => Navigator.push(
                //       context,
                //       ConcentricPageRoute(
                //           builder: (ctx) {
                //             return Bottom2();
                //           },
                //           fullscreenDialog: true,
                //           maintainState: false)),

                // Get.to(
                //   Bottom2(),
                // ),
                //   child: Text(
                //     'Home',
                //     style: textblacks,
                //   ),
                // )
                //         ],
                //       )
                //     ],
                //   ),
                // ),
                Container(
                    height: 30.h,
                    child: SfRadialGauge(
                        enableLoadingAnimation: true,
                        animationDuration: 4500,
                        axes: <RadialAxis>[
                          RadialAxis(
                              minimum: 0,
                              maximum: 100,
                              ranges: <GaugeRange>[
                                GaugeRange(
                                    startValue: 0,
                                    endValue: 50,
                                    color: Colors.teal.shade100),
                                GaugeRange(
                                    startValue: 50,
                                    endValue: 80,
                                    color: Colors.teal.shade300),
                                GaugeRange(
                                    startValue: 80,
                                    endValue: 100,
                                    color: Colors.teal.shade700)
                              ],
                              pointers: <GaugePointer>[
                                NeedlePointer(value: 30)
                              ],
                              annotations: <GaugeAnnotation>[
                                // GaugeAnnotation(
                                //     widget: Container(
                                //         child: Text('30.0',
                                //             style: TextStyle(
                                //                 fontSize: 25, fontWeight: FontWeight.bold))),
                                //     angle: 90,
                                //     positionFactor: 0.5)
                              ])
                        ])),
                // 20.h.heightBox,
                Container(
                  height: 40.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: bluebtnclr, width: 0.3.w)),
                  // color: Colors.amber,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Text('Campaign Name', style: textblack2L),
                        onTap: () => Get.to(CampaignDetailsView()),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('₹30,000.00', style: textRegularL),
                          Text('₹1,00,000.00')
                        ],
                      ),
                      new LinearPercentIndicator(
                        // width: 90,
                        lineHeight: 10.0,
                        barRadius: Radius.circular(10),
                        percent: 0.3,
                        backgroundColor: lineclr,
                        progressColor: Color(0xff00a8ad),
                      ),
                      Divider(
                        color: lineclr,
                        thickness: 2,
                      ),
                      InkWell(
                        child: Text('Campaign Name', style: textblack2L),
                        onTap: () => Get.to(CampaignDetailsView()),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('₹30,000.00', style: textRegularL),
                          Text('₹1,00,000.00')
                        ],
                      ),
                      new LinearPercentIndicator(
                        // width: 90,
                        lineHeight: 10.0,
                        barRadius: Radius.circular(10),
                        percent: 0.3,
                        backgroundColor: lineclr,
                        progressColor: Color(0xff00a8ad),
                      ),
                      Divider(
                        color: lineclr,
                        thickness: 2,
                      ),
                      InkWell(
                        child: Text('Campaign Name', style: textblack2L),
                        onTap: () => Get.to(CampaignDetailsView()),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('₹50,000.00', style: textRegularL),
                          Text('₹1,00,000.00')
                        ],
                      ),
                      new LinearPercentIndicator(
                        // width: 90,
                        lineHeight: 10.0,
                        barRadius: Radius.circular(10),
                        percent: 0.5,
                        backgroundColor: lineclr,
                        progressColor: Color(0xff00a8ad),
                      ),

                      // Row(
                      //   children: [
                      //     Container(
                      //       height: 1.h,
                      //       width: 1.w,
                      //       color: ,
                      //     )
                      //   ],
                      // )
                    ],
                  ).paddingAll(10),
                ),
                //  2.w.heightBox,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 1.6.h,
                      width: 3.2.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: bluebtnclr),
                      // color: bluebtnclr,
                    ),
                    1.w.widthBox,
                    Text(
                      'Invested',
                      style: textblacks,
                    ),
                    2.w.widthBox,
                    Container(
                      height: 1.6.h,
                      width: 3.2.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: lineclr),
                      // color: bluebtnclr,
                    ),
                    1.w.widthBox,
                    Text(
                      'Total Value',
                      style: textblacks,
                    )
                  ],
                ).paddingAll(10)
              ],
            ).paddingAll(10)));
  }
}
