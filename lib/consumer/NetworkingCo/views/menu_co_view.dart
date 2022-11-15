import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../widget/color_text.dart';

class MenuCoView extends StatefulWidget {
  const MenuCoView({Key? key}) : super(key: key);

  @override
  State<MenuCoView> createState() => _MenuCoViewState();
}

class _MenuCoViewState extends State<MenuCoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage("assets/images/user.png"),
                        backgroundColor: Colors.transparent,
                      ),
                      3.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("User Name", style: textblackL),
                          Text("See your profile", style: texthrays),
                          // Text("+91 0123456789", style: texthrays),
                        ],
                      ),
                    ],
                  ),
                  Image.asset("assets/icons/edit.png", scale: 5)
                ],
              ),
              5.h.heightBox,
              Container(
                width: 90.w,
                height: 0.2.h,
                decoration: BoxDecoration(
                  color: lineclr,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ],
          ),
          2.h.heightBox,
          Column(
            children: [
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
                          Text("Account", style: textblack3L),
                        ],
                      ),
                    ],
                  ),
                  Image.asset("assets/icons/back1.png", scale: 3)
                ],
              ),
              2.h.heightBox,
            ],
          ),
          InkWell(
            // onTap: () => Get.to(NotificationView()),
            child: Row(
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
                Image.asset("assets/icons/back1.png", scale: 3)
              ],
            ),
          ),
          2.h.heightBox,
          InkWell(
            // onTap: (() => Get.to(WalletView())),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/add_friends.png',
                      scale: 3,
                    ),
                    3.w.widthBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Find Friends", style: textblack3L),
                      ],
                    ),
                  ],
                ),
                Image.asset("assets/icons/back1.png", scale: 3)
              ],
            ),
          ),
          2.h.heightBox,
          InkWell(
            // onTap: () => Get.to(SettingsView()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/setting.png',
                      scale: 3,
                    ),
                    3.w.widthBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Settings", style: textblack3L),
                      ],
                    ),
                  ],
                ),
                Image.asset("assets/icons/back1.png", scale: 3)
              ],
            ),
          ),
          2.h.heightBox,
          InkWell(
            onTap: () {
              showDialog(
                  barrierDismissible: true,
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: appbg,
                      content: Container(
                        decoration: const BoxDecoration(color: whiteclr),
                        height: 10.h,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              2.h.heightBox,
                              Text('Logout', style: apptitle),
                              2.h.heightBox,
                              Flex(
                                direction: Axis.vertical,
                                children: [
                                  Text(
                                    'Are you sure you want to logout?',
                                    style: TextStyle(fontSize: 12),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              )
                            ]),
                      ),
                      actions: [
                        TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all(blackbtnClr)),
                            onPressed: () {
                              Get.back();
                            },
                            child: Text(
                              'Cancel',
                              style: TextStyle(fontSize: 14),
                            )),
                        InkWell(
                          onTap: () {
                            print('logout');
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                color: bluebtnclr,
                                border: Border.all(color: Color(0xff0060B9)),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              child: Text(
                                "Logout",
                                style: txtWhiteL,
                              ).pOnly(
                                  right: 3.h,
                                  left: 3.h,
                                  top: 1.h,
                                  bottom: 1.h)),
                        )
                      ],
                    );
                  });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/logout.png',
                      scale: 3,
                    ),
                    3.w.widthBox,
                    Text("Logout", style: textblack3L),
                  ],
                ),
                Image.asset("assets/icons/back1.png", scale: 3)
              ],
            ),
          ),
          2.h.heightBox,
        ],
      ).pOnly(right: 2.h, left: 2.h, top: 3.h),
    );
  }
}
