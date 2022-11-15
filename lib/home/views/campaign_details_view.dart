import 'package:adzetera_frontend/widget/color_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/home_controller.dart';

class CampaignDetailsView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: true,
            iconTheme: IconThemeData(color: blackbtnClr),
            backgroundColor: Colors.transparent,
            elevation: 0),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Campaign\nName",
                  style: txtbigBlack,
                ),
                Image.asset(
                  'assets/images/qr-code.png',
                  scale: 4,
                )
              ],
            ),
            Text('Lorem ipsum dolor sit amet, consectetuer'
                ' adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat'
                ' volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis'
                ' nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate'
                ' velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan'
                ' et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait'
                ' nulla facilisi.'),
            // Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            //   Icon(
            //     Icons.phone_in_talk,
            //   ),
            //   2.w.widthBox,
            //   Icon(Icons.message_sharp)
            // ]),
            Table(
              // border: TableBorder.all(),
              // textBaseline: TextBaseline.alphabetic,
              children: [
                TableRow(children: [
                  Text(
                    'Name',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ).pOnly(top: 0.7.h, bottom: 0.7.h),
                  Text('Viewed',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .pOnly(top: 0.7.h, bottom: 0.7.h),
                  Text('Call',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .pOnly(top: 0.7.h, bottom: 0.7.h),
                  Text('Chat',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold))
                      .pOnly(top: 0.7.h, bottom: 0.7.h),
                ], decoration: BoxDecoration(color: lineclr)),
                TableRow(
                  children: [
                    Text(
                      'User Name',
                      textAlign: TextAlign.center,
                      style: textblacks,
                    ).pOnly(top: 0.7.h, bottom: 0.7.h),
                    Text(
                      '20-06-2022',
                      textAlign: TextAlign.center,
                      style: textblacks,
                    ).pOnly(top: 0.7.h, bottom: 0.7.h),
                    Icon(Icons.phone),
                    Icon(Icons.message)
                  ],
                ),
                TableRow(
                  // decoration:
                  //     BoxDecoration(border: Border.all(color: Colors.red)),
                  children: [
                    Text(
                      'User Name',
                      textAlign: TextAlign.center,
                      style: textblacks,
                    ).pOnly(top: 0.7.h, bottom: 0.7.h),
                    Text(
                      '20-06-2022',
                      textAlign: TextAlign.center,
                      style: textblacks,
                    ).pOnly(top: 0.7.h, bottom: 0.7.h),
                    Icon(Icons.phone),
                    Icon(Icons.message)
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      'User Name',
                      textAlign: TextAlign.center,
                      style: textblacks,
                    ).pOnly(top: 0.7.h, bottom: 0.7.h),
                    Text(
                      '20-06-2022',
                      textAlign: TextAlign.center,
                      style: textblacks,
                    ).pOnly(top: 0.7.h, bottom: 0.7.h),
                    Icon(Icons.phone),
                    Icon(Icons.message)
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      'User Name',
                      textAlign: TextAlign.center,
                      style: textblacks,
                    ).pOnly(top: 0.7.h, bottom: 0.7.h),
                    Text(
                      '20-06-2022',
                      textAlign: TextAlign.center,
                      style: textblacks,
                    ).pOnly(top: 0.7.h, bottom: 0.7.h),
                    Icon(Icons.phone),
                    Icon(Icons.message)
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      'User Name',
                      textAlign: TextAlign.center,
                      style: textblacks,
                    ).pOnly(top: 0.7.h, bottom: 0.7.h),
                    Text(
                      '20-06-2022',
                      textAlign: TextAlign.center,
                      style: textblacks,
                    ).pOnly(top: 0.7.h, bottom: 0.7.h),
                    Icon(Icons.phone),
                    Icon(Icons.message)
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      'User Name',
                      textAlign: TextAlign.center,
                      style: textblacks,
                    ).pOnly(top: 0.7.h, bottom: 0.7.h),
                    Text(
                      '20-06-2022',
                      textAlign: TextAlign.center,
                      style: textblacks,
                    ).pOnly(top: 0.7.h, bottom: 0.7.h),
                    Icon(Icons.phone),
                    Icon(Icons.message)
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      'User Name',
                      textAlign: TextAlign.center,
                      style: textblacks,
                    ).pOnly(top: 0.7.h, bottom: 0.7.h),
                    Text(
                      '20-06-2022',
                      textAlign: TextAlign.center,
                      style: textblacks,
                    ).pOnly(top: 0.7.h, bottom: 0.7.h),
                    Icon(Icons.phone),
                    Icon(Icons.message)
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      'User Name',
                      textAlign: TextAlign.center,
                      style: textblacks,
                    ).pOnly(top: 0.7.h, bottom: 0.7.h),
                    Text(
                      '20-06-2022',
                      textAlign: TextAlign.center,
                      style: textblacks,
                    ).pOnly(top: 0.7.h, bottom: 0.7.h),
                    Icon(Icons.phone),
                    Icon(Icons.message)
                  ],
                ),
              ],
            )
          ],
        ).paddingAll(10));
  }
}
