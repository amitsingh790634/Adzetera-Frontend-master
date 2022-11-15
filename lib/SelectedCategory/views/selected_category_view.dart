import 'package:adzetera_frontend/SelectedCategory/controllers/selected_category_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../FilterProducts/views/filter_product_view.dart';
import '../../ProductDetail/views/product_detail_view.dart';
import '../../widget/color_text.dart';

// class SelectedCategoryView extends StatefulWidget {
//   const SelectedCategoryView({Key? key}) : super(key: key);

//   @override
//   State<SelectedCategoryView> createState() => _SelectedCategoryViewState();
// }

class SelectedCategoryView extends GetView<SelectedCategoryController> {
  SelectedCategoryController selcontroller =
      Get.put(SelectedCategoryController());
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(115.0),
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
                              hintText: 'Search for vegetables and fruits',
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search)),
                        ),
                      ),
                      InkWell(
                        onTap: () => Get.to(FilterProductView()),
                        child: Icon(
                          Icons.filter_alt_outlined,
                          // color: Colors.white,
                          size: 30,
                        ),
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
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 81.5.h,
                    width: 20.w,
                    // color: Colors.amber,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Card(
                              elevation: 4,
                              borderOnForeground: true,
                              child: Image.asset(
                                'assets/images/potato.png',
                                scale: 4,
                              ),
                            ),
                            Text('vegetables')
                          ],
                        ),
                        Column(
                          children: [
                            Card(
                              elevation: 4,
                              borderOnForeground: true,
                              child: Image.asset(
                                'assets/images/onion.png',
                                scale: 4,
                              ),
                            ),
                            Text('Fruits')
                          ],
                        ),
                        Column(
                          children: [
                            Card(
                              elevation: 4,
                              borderOnForeground: true,
                              child: Image.asset(
                                'assets/images/onion.png',
                                scale: 4,
                              ),
                            ),
                            Text('vegetables')
                          ],
                        ),
                        Column(
                          children: [
                            Card(
                              elevation: 4,
                              borderOnForeground: true,
                              child: Image.asset(
                                'assets/images/onion.png',
                                scale: 3,
                              ),
                            ),
                            Text('vegetables')
                          ],
                        ),
                        Column(
                          children: [
                            Card(
                              elevation: 4,
                              borderOnForeground: true,
                              child: Image.asset(
                                'assets/images/onion.png',
                                scale: 4,
                              ),
                            ),
                            Text('vegetables')
                          ],
                        ),
                        Column(
                          children: [
                            Card(
                              elevation: 4,
                              borderOnForeground: true,
                              child: Image.asset(
                                'assets/images/onion.png',
                                scale: 4,
                              ),
                            ),
                            Text('vegetables')
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 81.5.h,
                    width: 80.w,
                    // width: ,
                    child: InkWell(
                      onTap: () => Get.to(ProductDetailView()),
                      child: GridView.builder(
                          gridDelegate:
                              new SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10),
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              borderOnForeground: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(color: line2clr)),
                              child: Stack(
                                children: [
                                  Positioned(
                                      left: -0.5,
                                      child: Image.asset(
                                        'assets/images/off.png',
                                        scale: 3,
                                      )),
                                  Column(
                                    children: [
                                      Image.asset(
                                        'assets/images/onion.png',
                                        scale: 3,
                                      ),
                                      2.h.heightBox,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Onion'),
                                          Text(
                                            "(1kg)",
                                            style: texthrays,
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(children: [
                                            Text('₹23'),
                                            Text(
                                              '₹30',
                                              style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: lineclr),
                                            ),
                                          ]),
                                          InkWell(
                                            onTap: () {
                                              selcontroller.isVal.value =
                                                  !selcontroller.isVal.value;
                                            },
                                            child: Obx(
                                              (() => controller.isVal.value
                                                  ? Container(
                                                      height: 2.4.h,
                                                      width: 13.w,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        5),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            5)),
                                                        color: yellow1Clr,
                                                      ),
                                                      // height: 3.h,
                                                      // width: double.maxFinite,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
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
                                                      ))
                                                  : Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color:
                                                                  green2Clr)),
                                                      child: Text(
                                                        'Add to cart',
                                                        style: txtGreen,
                                                      ),
                                                    )),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ).paddingAll(10),
                                ],
                              ),
                            );
                          }),
                    ),
                  )
                ],
              )
            ],
          ),
          Obx((() => Positioned(
              bottom: 1,
              child: Visibility(
                  visible: selcontroller.isVal.value,
                  child: Container(
                    width: 49.h,
                    decoration: BoxDecoration(
                        color: green2Clr,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.shopping_cart_outlined, color: whiteclr),
                            Text(
                              '1 item ● ₹23',
                              style: txtWhite,
                            ).paddingOnly(left: 10),
                          ],
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
                  ).paddingAll(10)))))
        ],
      ),
    );
  }
}
