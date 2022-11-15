import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../widget/color_text.dart';

class ReferFriendView extends GetView<ReferFriendView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                elevation: 0,
                backgroundColor: appbg,
                title: Text('Customer Support', style: textblackL),
                centerTitle: false,
              ),
              5.h.heightBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Refer a Friend",
                    style: txtbig1Black,
                  ),
                  Text(
                    'And both of you can earn',
                    style: txtbig3Black,
                  ),
                  5.h.heightBox,
                  Image.asset(
                    'assets/images/refer_friend.png',
                    scale: 4,
                  ),
                  5.h.heightBox,
                  Text(
                    'Get cashback of ₹300',
                    style: textRedL,
                  ),
                  1.h.heightBox,
                  Text(
                    'For every new user you refer',
                    style: txtbig2Black,
                  ),
                  1.h.heightBox,
                  Text(
                    'Share your referral link and earn',
                    style: txthrayL,
                  ),
                  1.h.heightBox,
                  Text(
                    '₹300',
                    style: txthrayL,
                  ),
                  5.h.heightBox,
                  Container(
                    height: 7.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: lineclr, // Set border color
                          width: 1),
                    ),
                    child: TextField(
                      readOnly: true,
                      decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.copy, size: 3.5.h, color: lineclr),
                        border: InputBorder.none,
                        hintText: 'hdf4jbsdf828gur757',
                        hintStyle: txthrayL,
                        suffix: Text("Share", style: txtRedL),
                      ),
                    ).centered(),
                  )
                ],
              )
            ],
          ).pOnly(right: 2.h, left: 2.h),
        ),
      ),
    );
  }
}
