import 'package:adzetera_frontend/MyAds/myads_view/myads_view.dart';
import 'package:adzetera_frontend/account/account_controller/account_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../widget/color_text.dart';
import '../search_controller/search_controller.dart';

class SearchView extends GetView<SearchController> {
  SearchController controller = Get.put(SearchController());
  SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final orientation = MediaQuery.of(context).orientation;
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
                      hintText: 'Search for aata, dal, coke and more',
                      prefixIcon: Icon(Icons.arrow_back)),
                ),
              ),
              2.h.heightBox,
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Image.asset(
                        controller.imageList[index],
                        scale: 3,
                      ),
                      title: Text(
                        controller.txtList[index],
                        style: txtblackNormal,
                      ),
                    );
                  }).h(50.h),
            ],
          ).paddingAll(2.h),
        ),
      ),
    );
  }
}
