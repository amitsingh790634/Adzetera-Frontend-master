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
import '../home_controller/categories_controller.dart';
import 'grocery.dart';

class CategoriesView extends GetView<CategoriesController> {
  CategoriesController controller = Get.put(CategoriesController());
  CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
        appBar:
            AppBar(elevation: 0, backgroundColor: Colors.transparent, actions: [
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
              Text("All categories", style: apptitle),
              InkWell(
                onTap: () => Get.to(
                  GroceryView(),
                ),
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: (0.50 / .70),
                        // childAspectRatio: 0.70,
                        mainAxisSpacing: 2.h),
                    itemCount: controller.imageList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                          child: Column(
                            children: [
                              Container(
                                  height: 8.h,
                                  // width: 12.h,
                                  child: Image.asset(
                                    controller.imageList[index].toString(),
                                    scale: 0.5,
                                  )).paddingAll(2.w),
                              Text(controller.list[index], style: txthgrayL)
                                  .paddingAll(1.h),
                            ],
                          ),
                          elevation: 2.w,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // if you need this
                            side: BorderSide(
                              color: lineclr.withOpacity(0.3),
                            ),
                          ));
                    }),
              ),
            ],
          ).paddingAll(2.w),
        ),
      ),
    );
  }
}
