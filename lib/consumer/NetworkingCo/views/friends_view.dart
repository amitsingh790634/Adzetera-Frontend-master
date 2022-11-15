import 'package:adzetera_frontend/widget/color_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class FirendsView extends StatefulWidget {
  const FirendsView({Key? key}) : super(key: key);

  @override
  State<FirendsView> createState() => _FirendsViewState();
}

class _FirendsViewState extends State<FirendsView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//     );
//   }
// }
// class FriendsView extends StatefulWidget {
//   @override
//   FriendsViewState createState() => _FriendsViewState();
// }

// class _FriendsViewState extends State<FriendsView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     'Friends',
        //   ),
        //   centerTitle: false,
        //   actions: [Icon(Icons.search)],
        //   // backgroundColor: Colors.grey[700]?.withOpacity(0.4),
        //   // elevation: 0,
        //   // give the app bar rounded corners
        //   // shape: RoundedRectangleBorder(
        //   //   borderRadius: BorderRadius.only(
        //   //     bottomLeft: Radius.circular(20.0),
        //   //     bottomRight: Radius.circular(20.0),
        //   //   ),
        //   // ),
        //   // leading: Icon(
        //   //   Icons.menu,
        //   // ),
        // ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Freinds',
                      style: txtbigBlack,
                    ),
                    Icon(Icons.search)
                  ],
                ),
              ),
              // construct the profile details widget here
              // SizedBox(
              //   height: 180,
              //   child: Center(
              //     child: Text(
              //       'Profile Details Goes here',
              //     ),
              //   ),
              // ),

              // the tab bar with two items
              SizedBox(
                height: 50,
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  bottom: TabBar(
                    labelStyle: txtblackNormal,
                    labelColor: blackbtnClr,
                    indicatorColor: bluebtnclr,
                    unselectedLabelColor: lineclr,
                    tabs: [
                      Tab(
                        text: 'Requests',
                      ),
                      Tab(
                        text: 'All Friends',
                      ),
                    ],
                  ),
                ),
              ),

              // create widgets for each tab bar here
              Expanded(
                child: TabBarView(
                  children: [
                    // first tab bar view widget
                    ListView.separated(
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(
                              thickness: 4,
                              height: 20,
                            ),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Image.asset(
                                    'assets/images/user.png',
                                    scale: 2.5,
                                  ),
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Name',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      0.5.h.heightBox,
                                      Row(
                                        children: [
                                          Container(
                                            width: 11.w,
                                            child: Stack(children: [
                                              Positioned(
                                                // left: 4,
                                                child: Image.asset(
                                                  'assets/images/user.png',
                                                  scale: 9,
                                                ),
                                              ),
                                              Positioned(
                                                right: 10,
                                                child: Image.asset(
                                                  'assets/images/user.png',
                                                  scale: 9,
                                                ),
                                              )
                                            ]),
                                          ),
                                          Text('Mutual Friends')
                                        ],
                                      ),
                                      0.5.h.heightBox,
                                      Container(
                                        decoration: BoxDecoration(
                                          color: bluebtnclr,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(0),
                                          ),
                                        ),
                                        child: Text(
                                          "Add Friends",
                                          style: txtWhite,
                                        ).centered().pOnly(
                                            top: 0.7.h,
                                            bottom: 0.7.h,
                                            right: 4.h,
                                            left: 4.h),
                                      )
                                    ],
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: lineclr,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(0),
                                      ),
                                    ),
                                    child: Text(
                                      "Remove",
                                      style: txtblackNormal,
                                    ).centered().pOnly(
                                        top: 0.7.h,
                                        bottom: 0.7.h,
                                        right: 5.5.h,
                                        left: 5.5.h),
                                  )
                                ],
                              )
                            ],
                          );
                        },
                        itemCount: 6),

                    // second tab bar viiew widget
                    Container(
                      // color: Colors.pink,
                      child: Center(
                        child: Text(
                          'All Friends',
                        ),
                      ),
                    ),
                  ],
                ).pOnly(top: 2.h),
              ),
            ],
          ).paddingAll(10),
        ),
      ),
    );
  }
}
