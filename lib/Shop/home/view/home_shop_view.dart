import 'package:adzetera_frontend/Shop/home/view/categories_view.dart';
import 'package:adzetera_frontend/profile/views/profile_view.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../CreateAccount/CreateAccountView/create_account_view.dart';
import '../../../account/account_view/account_view.dart';
import '../../../consumer/SignInCo/views/signin_co_view.dart';
import '../../../home/controllers/home_controller.dart';
import '../../../widget/color_text.dart';
import '../home_controller/home_controller.dart';

class HomeShopView extends GetView<HomeShopController> {
  TextEditingController text = TextEditingController();
  var list = [
    "Grocery",
    'Technology',
    'Fashion',
    'Electronics',
    'Home',
    'Appliances',
    'Toys & \nEntertainment',
    'Sports',
    'Stationery',
  ];

  var list4 = [
    "Macbook Air M1",
    'Sony WH/1000XM4',
    'FreeBuds Huawei',
  ];

  var list5 = [
    "\$ 29,999 ",
    '\$ 4,999 ',
    '\$ 1,499 ',
  ];

  var list3 = [
    "Free shipping",
    "Free shipping",
    "Free shipping",
  ];

  var list1 = [
    "assets/images/grocery.png",
    "assets/images/technology.png",
    "assets/images/fashion.png",
    "assets/images/electronics.png",
    "assets/images/home.png",
    "assets/images/appliances.png",
    "assets/images/toys.png",
    "assets/images/sports.png",
    "assets/images/stationery.png",
  ];

  var list2 = [
    "assets/images/mac.png",
    "assets/images/headphone.png",
    "assets/images/buds.png",
  ];
  // Route _createRoute() {
  //   return PageRouteBuilder(
  //     pageBuilder: (context, animation, secondaryAnimation) =>
  //         CreateAccountView(),
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       return child;
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20.h),
        child: Column(
          children: [
            AppBar(
              backgroundColor: tealclr,
              title: Image.asset(
                'assets/images/newlogo4.png',
                height: 10.h,
                width: 40.w,
                // scale: 15,
                // color: Col,
                color: Colors.white,
                // scale: 10,
                // fit: BoxFit.cover,
              ),
              centerTitle: true,
              // floating: true,
              leading: Image.asset(
                'assets/icons/account.png',
                color: Colors.white,
                scale: 1.7,
              ).onTap(() {
                Get.to(AccountView());
              }),
              actions: [
                Text('Advertiser').p(10).onTap(() {
                  Get.to(CreateAccountView(),
                      transition: Transition.cupertino,
                      duration: Duration(seconds: 2),
                      curve: Curves.easeOutSine);
                })
                // IconButton(
                //   icon: Icon(
                //     Icons.menu,
                //     color: Colors.white,
                //   ),
                //   iconSize: 20.0,
                //   onPressed: () => print('Messenger'),
                // ),
              ],
            ),
            Container(
              color: tealclr,
              child: Column(
                children: [
                  1.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 5.h,
                        child: AnimSearchBar(
                            width: 300,
                            textController: text,
                            onSuffixTap: () {}),
                      ),
                      // Container(
                      //   decoration: BoxDecoration(
                      //       color: Colors.white,
                      //       borderRadius: BorderRadius.circular(5)),
                      //   // color: Colors.white,
                      //   width: 85.w,
                      //   height: 5.h,
                      //   child: TextFormField(
                      //       keyboardType: TextInputType.text,
                      //       decoration: InputDecoration(
                      //           hintText: 'Search product by name',
                      //           prefixIcon: Icon(Icons.search),
                      //           suffixIcon: Image.asset('assets/icons/qr.png',
                      //               scale: 3))),
                      // ),
                      const Icon(
                        Icons.mic,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  ).paddingOnly(left: 10, top: 10, right: 10),
                  1.h.heightBox
                ],
              ),
            ),
            // 1.h.heightBox,
            Container(
              decoration: BoxDecoration(color: tealclr),
              child: Row(children: [
                Icon(Icons.location_on, color: whitebtnclr, size: 4.h),
                Text(
                  'Location',
                  style: btntxtWhiteL,
                ),
                Icon(
                  Icons.arrow_drop_down_outlined,
                  color: whitebtnclr,
                  size: 4.h,
                )
              ]).pOnly(left: 1.h),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/banner.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('All categories', style: apptitle),
                InkWell(
                  onTap: () => Get.to(
                    () => CategoriesView(),
                  ),
                  child: SizedBox(
                    height: 22.h,
                    child: ListView.builder(
                        itemCount: list.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                        height: 10.h,
                                        width: 15.h,
                                        child:
                                            Image.asset(list1[index], scale: 1)
                                                .pOnly(top: 2.h)),
                                    Text(list[index], style: txthgrayL)
                                        .centered()
                                        .paddingAll(2.h),
                                  ],
                                ),
                              ),
                              elevation: 2.w,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // if you need this
                                side: BorderSide(
                                  color: lineclr.withOpacity(0.3),
                                ),
                              ));
                        }),
                  ),
                ),
                2.h.heightBox,
                Text('Hot sales', style: apptitle),
                SizedBox(
                  height: 30.h,
                  child: ListView.builder(
                      itemCount: list4.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(list3[index], style: textReds),
                                  Container(
                                      height: 15.h,
                                      width: 45.w,
                                      child: Image.asset(list2[index])),
                                  Text(list4[index], style: textblack2L),
                                  Text(list5[index], style: textblack2L),
                                ],
                              ).paddingAll(3.w),
                            ),
                            elevation: 3.w,
                            margin: EdgeInsets.all(3.w),
                            shadowColor: lineclr,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ));
                      }),
                ),
                2.h.heightBox,
                Text('Recently Viewed', style: apptitle),
                SizedBox(
                  height: 30.h,
                  child: ListView.builder(
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                            child: Container(
                              color: shopcard1,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                      top: 1.h,
                                      left: 12.h,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: whitebtnclr,
                                        ),
                                        height: 4.h,
                                        width: 20.h,
                                        child: Icon(
                                          Icons.favorite_border_outlined,
                                          color: red1Clr,
                                        ),
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Positioned(
                                      //     bottom: 3.h,
                                      //     child: Container(
                                      //       height: 2.h,
                                      //       color: Colors.red,
                                      //     )),
                                      Container(
                                        height: 15.h,
                                        width: 45.w,
                                        child: Image.asset(
                                            'assets/images/mac1.png'),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Huawei Matebook ",
                                            style: apptitle,
                                          ).pOnly(right: 2.h, left: 2.h),
                                          Text(
                                            "\$",
                                            style: apptitle,
                                          ),
                                          Text(
                                            "20,999 ",
                                            style: apptitle,
                                          )
                                        ],
                                      )
                                    ],
                                  ).paddingAll(3.w),
                                ],
                              ),
                            ),
                            elevation: 3.w,
                            margin: EdgeInsets.all(3.w),
                            shadowColor: lineclr,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ));
                      }),
                ),
              ],
            ).paddingAll(2.h),
          ],
        ),
      ),
    );
  }
}
