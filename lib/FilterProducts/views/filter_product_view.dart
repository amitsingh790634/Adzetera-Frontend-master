import 'package:adzetera_frontend/FilterProducts/controllers/filter_products_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widget/color_text.dart';

class FilterProductView extends StatefulWidget {
  @override
  State<FilterProductView> createState() => _FilterProductViewState();
}

class _FilterProductViewState extends State<FilterProductView> {
  bool value = false;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(115.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              // title: Text('Order History', style: apptitle),
              leading: Icon(Icons.arrow_back),
              title: Text(
                'Filter Products',
                style: apptitle,
              ),
              centerTitle: false,
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: NavigationRail(
                    selectedIndex: _selectedIndex,
                    // selectedIconTheme: IconThemeData(color: Colors.amber),
                    backgroundColor: line2clr,
                    // indicatorColor: Colors.transparent,
                    selectedLabelTextStyle: txtWhite,
                    // useIndicator: true,
                    unselectedLabelTextStyle: txtGreen,
                    onDestinationSelected: (int index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    labelType: NavigationRailLabelType.selected,
                    destinations: [
                      NavigationRailDestination(
                        icon: Icon(null),
                        selectedIcon: Icon(null),
                        label: Container(
                            height: 5.h,
                            width: 20.w,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                'Sort By',
                                style: txtSmallBlack,
                              ),
                            )),
                      ),
                      NavigationRailDestination(
                        icon: Icon(null),
                        selectedIcon: Icon(null),
                        label: Container(
                            height: 5.h,
                            width: 20.w,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                'Type',
                                style: txtSmallBlack,
                              ),
                            )),
                      ),
                      NavigationRailDestination(
                        icon: Icon(null),
                        // selectedIcon: Icon(Icons.star),
                        label: Container(
                            height: 5.h,
                            width: 20.w,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                'Pack Size',
                                style: txtSmallBlack,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(thickness: 2, width: 2),
                // This is the main content.
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: this.value, onChanged: (bool? value) {},

                          // onChanged: (bool value) {
                          //     setState(() {
                          //     this.value = value;
                          //     });
                          // },
                        ),
                        Text('Price (Low to High)')
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: this.value, onChanged: (bool? value) {},

                          // onChanged: (bool value) {
                          //     setState(() {
                          //     this.value = value;
                          //     });
                          // },
                        ),
                        Text('Price (High to Low)')
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: this.value, onChanged: (bool? value) {},

                          // onChanged: (bool value) {
                          //     setState(() {
                          //     this.value = value;
                          //     });
                          // },
                        ),
                        Text('Popularity')
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: this.value, onChanged: (bool? value) {},

                          // onChanged: (bool value) {
                          //     setState(() {
                          //     this.value = value;
                          //     });
                          // },
                        ),
                        Text('Discount')
                      ],
                    )
                  ],
                )

                    // Center(
                    //   child: Text('selectedIndex: $_selectedIndex'),
                    // ),
                    )
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                alignment: Alignment.center,
                height: 7.w,
                width: 20.w,
                color: green2Clr,
                child: Text(
                  "Apply",
                  style: txtWhiteL,
                ),
              ),
            ).paddingAll(10),
            3.h.heightBox
          ],
        ),
      ),
    );
  }
}
