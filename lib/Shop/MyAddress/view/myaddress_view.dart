import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../widget/color_text.dart';
import '../../Location/view/edit_address_view.dart';
import '../myaddress_controller/myaddress_controller.dart';

class MyAddressView extends GetView<MyAddressController> {
  MyAddressController controller = Get.put(MyAddressController());
  MyAddressView({Key? key}) : super(key: key);

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
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('My Addresses', style: apptitle),
              Text('Choose delivery address', style: texthrayL),
            ],
          ),
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.circle_outlined, color: green2Clr),
                      2.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Home', style: textblack3L),
                          Text('User Name', style: texthrayL),
                          Text('Full Address', style: texthrayL),
                          Text('New Delhi, India', style: texthrayL)
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
              2.h.heightBox,
              InkWell(
                onTap: () => Get.to(EditAddressView()),
                child: Container(
                  decoration: BoxDecoration(
                      color: green2Clr, borderRadius: BorderRadius.circular(4)),
                  child: Text('Add a new address', style: btntxtWhiteL).p(2.w),
                ),
              )
            ],
          ).p(2.h),
        ),
      ),
    );
  }
}
