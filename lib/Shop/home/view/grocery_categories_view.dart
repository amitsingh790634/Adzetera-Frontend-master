import 'package:adzetera_frontend/MyAds/myads_view/myads_view.dart';
import 'package:adzetera_frontend/account/account_controller/account_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../widget/color_text.dart';
import '../home_controller/categories_controller.dart';
import '../home_controller/grocery_categories_controller.dart';
import '../home_controller/grocery_controller.dart';

class GroceryCategoriesView extends GetView<GroceryCategoriesController> {
  GroceryCategoriesController controller =
      Get.put(GroceryCategoriesController());
  GroceryCategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'All categories',
                style: apptitle,
              ),
              Text(
                'Curated with the best range of products',
                style: textblackL,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            2.h.heightBox,
            Column(
              children: [
                GridView.builder(
                  itemCount: 20,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 2.h,
                      mainAxisSpacing: 2.h),
                  itemBuilder: (BuildContext context, int index) {
                    // print(index % 4);
                    return Column(
                      children: [
                        Image.asset(
                          controller.imageList[index % 4].toString(),
                        ),
                        Text(
                          controller.list[index % 4].toString(),
                          style: textblacks,
                        )
                      ],
                    );
                  },
                ).pSymmetric(h: 2.w),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
