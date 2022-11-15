import 'package:adzetera_frontend/Settings/view/settings_view.dart';
import 'package:adzetera_frontend/account/account_controller/account_controller.dart';
import 'package:adzetera_frontend/help&support/views/faqs_view.dart';
import 'package:adzetera_frontend/refer/refer_view/refer_view.dart';
import 'package:adzetera_frontend/terms&privacy/views/terms_and_condition_view.dart';
import 'package:adzetera_frontend/wallet/wallet_view/wallet_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consumer/Co_Common_Screens/account_co/account_view/account_view2.dart';
import '../../help&support/views/help_support_view.dart';
import '../../home/views/home_view.dart';
import '../../notification/notivication_view/notivication_view.dart';
import '../../terms&privacy/views/privacy_policy_view.dart';
import '../../widget/color_text.dart';

class AccountView extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () => Get.to(
                              Account2CosView(),
                            ),
                            child: CircleAvatar(
                              radius: 30.0,
                              backgroundImage:
                                  AssetImage("assets/images/user.png"),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                          3.w.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("User Name", style: textblackL),
                              Text("userid@gmail.com", style: texthrays),
                              Text("+91 0123456789", style: texthrays),
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
              // InkWell(
              //   onTap: () => Get.to(HomeView()),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Row(
              //         children: [
              //           Image.asset(
              //             'assets/icons/dashboard.png',
              //             scale: 3,
              //           ),
              //           3.w.widthBox,
              //           Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text("Dashboard", style: textblack3L),
              //             ],
              //           ),
              //         ],
              //       ),
              //       Image.asset("assets/icons/back1.png", scale: 3)
              //     ],
              //   ),
              // ),
              // 2.h.heightBox,
              InkWell(
                onTap: () => Get.to(
                  NotificationView(),
                ),
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
                onTap: (() => Get.to(
                      WalletView(),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/wallet_black.png',
                          scale: 3,
                        ),
                        3.w.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Wallet", style: textblack3L),
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
                onTap: () => Get.to(
                  ReferView(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/refer_earn.png',
                          scale: 3,
                        ),
                        3.w.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Refer & Earn", style: textblack3L),
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
                onTap: () => Get.to(
                  HelpSupportView(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/help.png',
                          scale: 3,
                        ),
                        3.w.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Help & Support", style: textblack3L),
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
                onTap: () => Get.to(
                  FaqsView(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/faqs.png',
                          scale: 3,
                        ),
                        3.w.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("FAQs", style: textblack3L),
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
                onTap: () => Get.to(
                  SettingsView(),
                ),
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
                onTap: () => Get.to(
                  TermsAndConditionView(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/term.png',
                          scale: 3,
                        ),
                        3.w.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Terms & Conditions", style: textblack3L),
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
                onTap: () => Get.to(
                  PrivacyPolicyView(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/pravicy.png',
                          scale: 3,
                        ),
                        3.w.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Privacy Policy", style: textblack3L),
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
                                    border:
                                        Border.all(color: Color(0xff0060B9)),
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
        ),
      ),
    );
  }
}
