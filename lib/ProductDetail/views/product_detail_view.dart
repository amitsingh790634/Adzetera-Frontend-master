import 'package:adzetera_frontend/ProductDetail/controllers/product_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widget/color_text.dart';

class ProductDetailView extends GetView<ProductDetailController> {
  ProductDetailController controller = Get.put(ProductDetailController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(116.0),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              // title: Text('Order History', style: apptitle),
              leading: Icon(Icons.arrow_back),
              centerTitle: true,
            ),
            // 1.h.heightBox,
            Container(
              // color: bluebtnclr,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(blurRadius: 4, color: lineclr)
                            ],
                            borderRadius: BorderRadius.circular(5)),
                        // color: Colors.white,
                        width: 85.w,
                        height: 5.h,
                        child: TextFormField(
                          keyboardType: TextInputType.text,

                          decoration: InputDecoration(
                              hintText: 'Search Services by name',
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search)),

                          // decoration: const InputDecoration(
                          //   enabledBorder: OutlineInputBorder(
                          //     borderSide: BorderSide(
                          //       color: Color(0xff4DC0C9),
                          //     ),
                          //   ),
                          //   focusedBorder: OutlineInputBorder(
                          //     borderSide:
                          //         BorderSide(color: Color(0xffA5ABB3), width: 0.5),
                          //   ),
                          // ),
                        ),
                      ),
                      const Icon(
                        Icons.share,
                        // color: Colors.white,
                        size: 30,
                      )
                    ],
                  ).paddingOnly(left: 10, top: 10, right: 10),
                  1.h.heightBox
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: StaggeredGrid.count(
                  crossAxisCount: 4,
                  // mainAxisSpacing: 4,
                  // crossAxisSpacing: 4,
                  children: [
                    StaggeredGridTile.count(
                        crossAxisCellCount: 3,
                        mainAxisCellCount: 3,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: Image.asset('assets/images/onion.png'),
                        )
                        // ListTile(
                        //   tileColor: Colors.amber,
                        // ),
                        ),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: Image.asset('assets/images/onion.png'),
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: Image.asset('assets/images/onion.png'),
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: Image.asset('assets/images/onion.png'),
                        )),
                    // StaggeredGridTile.count(
                    //   crossAxisCellCount: 4,
                    //   mainAxisCellCount: 2,
                    //   child: ListTile(
                    //     tileColor: Colors.amber,
                    //   ),
                    // ),
                  ],
                )).paddingAll(10),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    controller.isTrue.value = !controller.isTrue.value;
                  },
                  child: Obx((() => controller.isTrue.value
                      ? Container(
                          height: 4.h,
                          width: 25.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5)),
                            color: yellow1Clr,
                          ),
                          // height: 3.h,
                          // width: double.maxFinite,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          ).paddingOnly(left: 20, right: 20))
                      : Container(
                          height: 4.h,
                          width: 25.w,
                          // width: 5.w.widthBox,
                          decoration: BoxDecoration(
                              color: green2Clr,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              'Add to cart',
                              style: txtWhite,
                            ),
                          )))),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ).paddingAll(10),
            ExpandedTile(
              trailing: Icon(null),
              // trailing: ,
              theme: const ExpandedTileThemeData(
                contentPadding: EdgeInsets.all(10.0),
              ),
              controller: controller.controller1,
              title: Row(
                children: [
                  const Text(
                    'Product Details',
                    style: TextStyle(
                        color: bluebtnclr,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: bluebtnclr,
                    size: 30,
                  )
                ],
              ),
              content: Container(
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: textblack2L,
                    ),
                    1.h.heightBox,
                    Text(
                        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy'
                        ' nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
                    3.h.heightBox,
                    Text('Nutrient Value & Benefits', style: textblack2L),
                    1.h.heightBox,
                    Text(
                        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy'
                        ' nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.'),
                    3.h.heightBox,
                    Text('Shelf Life', style: textblack2L),
                    1.h.heightBox,
                    Text('4 days'),
                    3.h.heightBox,
                    Text('Storage Tips', style: textblack2L),
                    1.h.heightBox,
                    Text('7-13'),
                    3.h.heightBox,
                    Text('Unit', style: textblack2L),
                    1.h.heightBox,
                    Text('1 kg')
                  ],
                ),
              ),
              onTap: () {
                // debugPrint("tapped!!");
              },
            ),
            Divider(thickness: 1, color: Colors.black),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'you may also like',
                  style: textblack3L,
                ),
                Text('view all')
              ],
            ).paddingAll(10),
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
                                        decoration: TextDecoration.lineThrough,
                                        color: lineclr),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      );
                    })),
            3.h.heightBox,
            Obx((() => Visibility(
                visible: controller.isTrue.value,
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
                ).paddingAll(10))))
          ],
        ),
      ),
    );
  }
}
