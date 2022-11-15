import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../widget/color_text.dart';
import '../controllers/faqs_controller.dart';

class FaqsCosView extends GetView<FaqsCosController> {
  var checkBoxValue = true;
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
          title: Text('FAQs', style: apptitle),
        ),
        body: ListView.separated(
          itemCount: 4,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          dragStartBehavior: DragStartBehavior.start,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(3.0)),
                boxShadow: [
                  BoxShadow(
                    color: blackbtnClr.withOpacity(0.5),
                    offset: Offset(0.0, 0.75),
                    blurRadius: 5,
                    // spreadRadius: -10,
                  )
                ],
              ),
              child: Column(
                children: [
                  1.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Campeign Name", style: textblack2L),
                      Image.asset('assets/icons/add_circle.png', scale: 3)
                    ],
                  ).pOnly(right: 2.h, left: 1.h, top: 2.h, bottom: 2.h),
                ],
              ).pOnly(right: 2.h, left: 1.h),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            height: 5.h,
          ),
          // 2.h.heightBox
        ).p(2.h),
      ),
    );
  }
}
