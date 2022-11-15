import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../widget/color_text.dart';
import '../../home/view/grocery.dart';
import '../location_controller/location_controller2.dart';

class LocationView2 extends GetView<Location2Controller> {
  Location2Controller controller = Get.put(Location2Controller());
  LocationView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: appbg,
          elevation: 0,
          iconTheme: IconThemeData(color: blackbtnClr),
          title: Text('Confirm location', style: apptitle),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/map1.png'),
                ],
              ),
              2.h.heightBox,
              Text('Select your delivery location', style: textblack3L)
                  .pOnly(right: 2.w, left: 2.w),
              2.h.heightBox,
              InkWell(
                onTap: () => Get.back(),
                child: Container(
                  decoration: BoxDecoration(
                    color: whitebtnclr,
                    border: Border.all(color: line2clr, width: .5.w),
                  ),
                  child: Text(
                    'Change',
                    textAlign: TextAlign.center,
                    style: txtRedL,
                  ).pOnly(right: 3.h, left: 3.h, top: 1.w, bottom: 1.w),
                ).objectCenterRight().pOnly(right: 2.h),
              ),
              InkWell(
                onTap: () => Get.to(GroceryView()),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: bluebtnclr),
                  //  padding: const EdgeInsets.all(15),
                  child:
                      Text("Confirm location and proceed", style: btntxtWhiteL)
                          .centered()
                          .pOnly(top: 1.5.h, bottom: 1.5.h),
                ).paddingAll(2.h),
              ),
              2.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
