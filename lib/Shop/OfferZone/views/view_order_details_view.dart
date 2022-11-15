import 'package:adzetera_frontend/Shop/OfferZone/controllers/view_order_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../CustomerSupport/views/customer_support_view.dart';
import '../../../widget/color_text.dart';

class ViewOrderDetailsView extends GetView<ViewOrderDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: true,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text('Order History', style: apptitle),
          leading: Icon(Icons.arrow_back),
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // 2.h.heightBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '''Placed on sat, 1st May'22, 5:05 pm''',
                  style: texthrays,
                ),
                2.h.heightBox,
                Text(
                  '''At Location''',
                  style: texthrays,
                ),
                2.h.heightBox,
                Text(
                  '''Full Address''',
                  style: texthrays,
                ),
              ],
            ).paddingAll(10),
            // 1.h.heightBox,
            Divider(
              thickness: 1.h,
              color: line2clr,
            ),
            Row(
              children: [Icon(Icons.credit_card), Text('Paid Online')],
            ).paddingAll(10),
            Divider(
              thickness: 1.h,
              color: line2clr,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(
                          '13 Items',
                          style: texthrays,
                        ),
                        2.w.widthBox,
                        Text(
                          'Order Id: 897uhUHSD',
                          style: texthrays,
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: green2Clr,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        'Re-Order',
                        style: txtWhite,
                      ).paddingAll(7),
                    )
                  ],
                ),
                2.h.heightBox,
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: green2Clr),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Download Summary',
                    style: txtGreen,
                  ).paddingAll(8),
                )
              ],
            ).paddingAll(10),
            Divider(
              thickness: 1.h,
              color: line2clr,
            ),
            Container(
              height: 92.h,
              // height: 50.h,
              // color: Colors.amber,
              child: ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: 8,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Row(children: [
                          Image.asset(
                            'assets/images/onion.png',
                            scale: 3,
                          ),
                          5.w.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Onion"),
                              1.h.heightBox,
                              Text(
                                "(1kg)",
                                style: texthrays,
                              ),
                              1.h.heightBox,
                              Row(
                                children: [
                                  Text('₹23'),
                                  2.w.widthBox,
                                  Text(
                                    '₹30',
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: lineclr),
                                  )
                                ],
                              )
                            ],
                          )
                        ]),
                        Divider(
                          thickness: 3,
                          color: line2clr,
                        ),
                      ],
                    );
                  }),
            ),
            Divider(
              thickness: 3,
              color: line2clr,
            ),
            Text(
              'Payment Summary',
              style: txtbig3Black,
            ).centered(),
            Divider(
              thickness: 3,
              color: line2clr,
            ),

            Column(
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("MRP"), Text('₹1145')],
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Product Discount"), Text('-₹331')],
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Membership Saving"), Text('-₹28')],
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Delivery Charge"), Text('free')],
                ),
              ],
            ).paddingAll(10),
            Divider(
              thickness: 3,
              color: line2clr,
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Net Payment"), Text('₹786')],
            ).paddingAll(10),
            2.h.heightBox,
            InkWell(
              onTap: () => Get.to(CustomerSupportView()),
              child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(color: green2Clr),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.headset_mic_sharp,
                        color: whiteclr,
                      ),
                      2.w.widthBox,
                      Text(
                        'Customer Support',
                        style: txtWhite,
                      )
                    ],
                  ).paddingAll(10)),
            )
          ]),
        ));
  }
}
