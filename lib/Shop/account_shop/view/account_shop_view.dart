import 'package:adzetera_frontend/Loginlast/view/login_last.dart';
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

import '../../../CustomerSupport/views/chat_view.dart';
import '../../../CustomerSupport/views/customer_support_view.dart';
import '../../../OrderHistory/views/order_history1_view.dart';
import '../../../widget/color_text.dart';
import '../../MyAddress/view/myaddress_view.dart';
import '../../refer_friend/view/refer_friend_view.dart';
import '../account_shop_controller/account_controller.dart';

class AccountShopView extends GetView<AccountShopController> {
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
                          CircleAvatar(
                            radius: 30.0,
                            backgroundImage:
                                AssetImage("assets/images/user.png"),
                            backgroundColor: Colors.transparent,
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
                      InkWell(
                        onTap: () => Get.to(LastLogin()),
                        child: Container(
                          decoration: BoxDecoration(
                              color: green2Clr,
                              borderRadius: BorderRadius.circular(4)),
                          child: Text('Login', style: btntxtWhiteL)
                              .pOnly(
                                  right: 4.w,
                                  left: 4.w,
                                  top: 0.5.h,
                                  bottom: 0.5.h)
                              .centered(),
                        ),
                      )
                    ],
                  ),
                  3.h.heightBox,
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
              InkWell(
                onTap: () => Get.to(MyAddressView()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/location.png',
                          scale: 4,
                        ),
                        3.w.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Address Book", style: textblackL),
                          ],
                        ),
                      ],
                    ),
                    Image.asset("assets/icons/back1.png", scale: 4)
                  ],
                ),
              ),
              2.h.heightBox,
              InkWell(
                onTap: () => Get.to(OrderHistory1View()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/Orders.png',
                          scale: 4,
                        ),
                        3.w.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order History", style: textblackL),
                          ],
                        ),
                      ],
                    ),
                    Image.asset("assets/icons/back1.png", scale: 4)
                  ],
                ),
              ),
              2.h.heightBox,
              InkWell(
                onTap: () => Get.to(ChatView()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/chat.png',
                          scale: 4,
                        ),
                        3.w.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Chat", style: textblackL),
                          ],
                        ),
                      ],
                    ),
                    Image.asset("assets/icons/back1.png", scale: 4)
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
                        'assets/icons/notification.png',
                        scale: 4,
                      ),
                      3.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Notification", style: textblackL),
                        ],
                      ),
                    ],
                  ),
                  Image.asset("assets/icons/back1.png", scale: 4)
                ],
              ),
              2.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/member.png',
                        scale: 4,
                      ),
                      3.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Membership", style: textblackL),
                        ],
                      ),
                    ],
                  ),
                  Image.asset("assets/icons/back1.png", scale: 4)
                ],
              ),
              2.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/card.png',
                        scale: 4,
                      ),
                      3.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Review & Rating", style: textblackL),
                        ],
                      ),
                    ],
                  ),
                  Image.asset("assets/icons/back1.png", scale: 4)
                ],
              ),
              2.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/promo.png',
                        scale: 4,
                      ),
                      3.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Promo Cord", style: textblackL),
                        ],
                      ),
                    ],
                  ),
                  Image.asset("assets/icons/back1.png", scale: 4)
                ],
              ),
              2.h.heightBox,
              InkWell(
                onTap: () => Get.to(ReferFriendView()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/add_friends.png',
                          scale: 4,
                        ),
                        3.w.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Refer a friend", style: textblackL),
                          ],
                        ),
                      ],
                    ),
                    Image.asset("assets/icons/back1.png", scale: 4)
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
                        'assets/icons/cart.png',
                        scale: 4,
                      ),
                      3.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("My Cart", style: textblackL),
                        ],
                      ),
                    ],
                  ),
                  Image.asset("assets/icons/back1.png", scale: 4)
                ],
              ),
              2.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/lang.png',
                        scale: 4,
                      ),
                      3.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Language", style: textblackL),
                        ],
                      ),
                    ],
                  ),
                  Image.asset("assets/icons/back1.png", scale: 4)
                ],
              ),
              2.h.heightBox,
              InkWell(
                onTap: () => Get.to(CustomerSupportView()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/help.png',
                          scale: 4,
                        ),
                        3.w.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Customer support", style: textblackL),
                          ],
                        ),
                      ],
                    ),
                    Image.asset("assets/icons/back1.png", scale: 4)
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
                        'assets/icons/faqs1.png',
                        scale: 4,
                      ),
                      3.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Help", style: textblackL),
                        ],
                      ),
                    ],
                  ),
                  Image.asset("assets/icons/back1.png", scale: 4)
                ],
              ),
              2.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/about.png',
                        scale: 4,
                      ),
                      3.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("About ", style: textblackL),
                        ],
                      ),
                    ],
                  ),
                  Image.asset("assets/icons/back1.png", scale: 4)
                ],
              ),
              2.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/policy.png',
                        scale: 4,
                      ),
                      3.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Privacy Policy", style: textblackL),
                        ],
                      ),
                    ],
                  ),
                  Image.asset("assets/icons/back1.png", scale: 4)
                ],
              ),
              2.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/pravicy.png',
                        scale: 4,
                      ),
                      3.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Terms & Conditions", style: textblackL),
                        ],
                      ),
                    ],
                  ),
                  Image.asset("assets/icons/back1.png", scale: 4)
                ],
              ),
              3.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/logout1.png',
                        scale: 4,
                      ),
                      6.h.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Log Out", style: texthrayL),
                        ],
                      ),
                    ],
                  ),
                ],
              ).pOnly(left: 10.h),
            ],
          ).pOnly(right: 2.h, left: 2.h, top: 3.h),
        ),
      ),
    );
  }
}
