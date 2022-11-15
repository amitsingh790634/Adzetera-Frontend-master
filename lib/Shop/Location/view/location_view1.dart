import 'package:adzetera_frontend/MyAds/myads_view/myads_view.dart';
import 'package:adzetera_frontend/Shop/Location/view/location_view2.dart';
import 'package:adzetera_frontend/account/account_controller/account_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../widget/color_text.dart';
import '../location_controller/location_controller1.dart';

class LocationView1 extends GetView<Location1Controller> {
  Location1Controller controller = Get.put(Location1Controller());
  LocationView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ]),
              // color: Colors.white,
              width: 90.w,
              height: 5.h,
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Search for delivery location',
                    prefixIcon: Icon(Icons.arrow_back)),
              ),
            ),
            2.h.heightBox,
            InkWell(
              onTap: () => Get.to(LocationView2()),
              child: Row(
                children: [
                  Icon(Icons.location_searching, color: bluebtnclr),
                  2.w.widthBox,
                  Text('use my current location', style: btntxtblueL),
                ],
              ),
            )
          ],
        ).paddingAll(2.h)),
      ),
    );
  }
}
