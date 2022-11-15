import 'package:adzetera_frontend/MyCart/controllers/my_cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Shop/MyAddress/view/myaddress_view.dart';
import '../../widget/color_text.dart';

class MyCartView extends GetView<MyCartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('My Cart', style: apptitle),
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Delivery in 8 min'),
              Text(
                'from (store name) to (your address)',
                style: texthrays,
              ),
              Row(
                children: [
                  Container(
                    height: 15.h,
                    width: 25.w,
                    child: Card(
                      // shape:
                      //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      child: GridTile(
                          footer: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5)),
                                color: yellow1Clr,
                              ),
                              height: 3.h,
                              // width: double.maxFinite,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '-',
                                    style: textblackL,
                                  ),
                                  Text(
                                    '1',
                                    style: textblackL,
                                  ),
                                  Text(
                                    '+',
                                    style: textblackL,
                                  ),
                                ],
                              ).paddingOnly(left: 7, right: 7)),
                          child: Container(
                            child: Image.asset(
                              'assets/images/onion.png',
                              scale: 4,
                            ),
                          )),
                      borderOnForeground: true,
                      elevation: 10,
                      // margin: EdgeInsets.all(5),
                      // surfaceTintColor: Colors.amber,
                    ),
                  ),
                  2.w.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Onion",
                        style: textblack2L,
                      ),
                      1.h.heightBox,
                      Text(
                        "(1kg)",
                        style: texthrays,
                      ),
                      1.h.heightBox,
                      Row(
                        children: [
                          Text('₹23', style: textblack2L),
                          2.w.widthBox,
                          Text(
                            '₹30',
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: lineclr),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ]).paddingAll(10),
            2.h.heightBox,
            Divider(
              thickness: 1.h,
              color: line2clr,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('More for you'), Text('view all')],
                ),
                Container(
                    height: 26.h,
                    // width: ,
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 4,
                                // color: Colors.amber,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                        bottom: -10,
                                        right: -10,
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.black,
                                                      offset: Offset(2, 2),
                                                      blurRadius: 5)
                                                ]),
                                            child: Icon(
                                              Icons.add,
                                              size: 30,
                                            ))),
                                    Container(
                                      height: 15.h,
                                      clipBehavior: Clip.none,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                'assets/images/potato.png',
                                              ),
                                              scale: 3)),
                                      width: 15.h,
                                      // child: Image.asset('assets/images/onion.png'),
                                    ),
                                    // Image.asset('images/assets/onion.png')
                                  ],
                                ),
                              ).paddingOnly(right: 12),
                              1.h.heightBox,
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Potato', style: textblack2L),
                                  1.h.heightBox,
                                  Text(
                                    '3 Pieces(0.8kg - 1kg)',
                                    style: texthrays,
                                  ),
                                  Row(
                                    children: [
                                      Text('₹23', style: textblackL),
                                      2.w.widthBox,
                                      Text(
                                        '₹30',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: lineclr),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          );
                        })),
              ],
            ).paddingAll(10),
            Divider(
              thickness: 1.h,
              color: line2clr,
            ),
            1.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.discount_rounded),
                    2.w.widthBox,
                    Text(
                      'Use coupons',
                      style: textblackL,
                    )
                  ],
                ),
                Text(
                  'login',
                  style: textblackL,
                )
              ],
            ).paddingAll(10),
            1.h.heightBox,
            Divider(
              thickness: 1.h,
              color: line2clr,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bill Details',
                  style: textblackL,
                ),
                1.h.heightBox,
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "MRP",
                    ),
                    Text(
                      '₹40',
                    )
                  ],
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Product Discount"),
                    Text(
                      '-₹17',
                      style: txtGreen,
                    )
                  ],
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Packaging charges"),
                    Text(
                      'Free',
                      style: txtGreen,
                    )
                  ],
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery Charge"),
                    Row(
                      children: [
                        Text(
                          '₹25',
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.black87),
                        ),
                        Text(
                          'Free',
                          style: txtGreen,
                        ),
                      ],
                    )
                  ],
                ),
                2.h.heightBox,
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Bill",
                      style: textblackL,
                    ),
                    Text(
                      '₹23',
                      style: textblackL,
                    )
                  ],
                ),
              ],
            ).paddingAll(10),
            Divider(
              thickness: 1.h,
              color: line2clr,
            ),
            5.h.heightBox,
            InkWell(
              onTap: () => Get.to(MyAddressView()),
              child: Container(
                decoration: BoxDecoration(
                    color: green2Clr, borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1 item ● ₹23',
                      style: txtWhite,
                    ).paddingOnly(left: 10),
                    Row(
                      children: [
                        Text(
                          'Proceed',
                          style: txtWhite,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        )
                      ],
                    ).paddingAll(10)
                  ],
                ),
              ).paddingAll(10),
            )
          ],
        ),
      ),
    );
  }
}
