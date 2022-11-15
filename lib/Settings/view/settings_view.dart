import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../ResetPassword/views/reset_password_view.dart';
import '../../widget/color_text.dart';
import '../settings_controller/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AppBar(
              leading: InkWell(
                onTap: () => Get.back(),
                child: Image.asset(
                  "assets/icons/back.png",
                  scale: 3,
                ).pOnly(right: 3.h),
              ),
              title: Text('Settings', style: apptitle),
              elevation: 0,
              backgroundColor: appbg,
            ),
            2.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/user_black.png',
                      scale: 3,
                    ),
                    3.w.widthBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Edit Profile", style: textblack3L),
                      ],
                    ),
                  ],
                ),
                Image.asset("assets/icons/back1.png", scale: 3)
              ],
            ),
            2.h.heightBox,
            InkWell(
              onTap: () => Get.to(ResetPasswordView()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/lock.png',
                        scale: 3,
                      ),
                      3.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Change Password", style: textblack3L),
                        ],
                      ),
                    ],
                  ),
                  Image.asset("assets/icons/back1.png", scale: 3)
                ],
              ),
            ),
            2.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/notification_black.png',
                      scale: 3,
                    ),
                    3.w.widthBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Notifications", style: textblack3L),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        Get.to(() {
                          isSwitched = value;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ).pOnly(right: 2.h, left: 2.h, top: 3.h),
      ),
    );
  }
}
