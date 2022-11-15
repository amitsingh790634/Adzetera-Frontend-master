import 'package:adzetera_frontend/MyAds/myads_view/myads_view.dart';
import 'package:adzetera_frontend/account/account_controller/account_controller.dart';
import 'package:adzetera_frontend/widget/bottom_bar2.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../consumer/NetworkingCo/views/main_net_co_view.dart';
import '../../../widget/color_text.dart';
import '../../Location/view/location_view1.dart';
import '../home_controller/categories_controller.dart';
import '../home_controller/grocery_controller.dart';
import 'categories_view.dart';

class GroceryView extends GetView<GroceryController> {
  GroceryController controller = Get.put(GroceryController());
  GroceryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: InkWell(
              onTap: () => Get.to(LocationView1()),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    color: blackbtnClr,
                  ),
                  Text(
                    '40-C, Pocket-1, Phase-1...',
                    style: textRegularL,
                  ),
                  Icon(
                    Icons.arrow_drop_down_outlined,
                    color: blackbtnClr,
                  ),
                ],
              ),
            ),
            // centerTitle: false,
            actions: [
              InkWell(
                onTap: () => Get.to(Bottom2()),
                child: Text(
                  'Back to app',
                  style: btntxtblueL,
                ).paddingAll(2.w),
              ),
            ]),
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
                    hintText: 'Search product',
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Container(
                      decoration: BoxDecoration(
                          color: bluebtnclr,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5.0,
                            ),
                          ]),
                      child: Text(
                        'Search',
                        style: txtWhiteL,
                      ).pOnly(right: 2.h, left: 2.h, top: 1.h, bottom: 1.h),
                    ),
                  )),
            ).centered(),
            2.h.heightBox,
            Image.asset('assets/images/banner2.png'),
            2.h.heightBox,
            Column(
              children: [
                InkWell(
                  onTap: () => Get.to(CategoriesView()),
                  child: GridView.builder(
                    itemCount: 12,
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
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
