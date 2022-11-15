import 'package:adzetera_frontend/consumer/SurveyCo/controllers/survey_home_controller.dart';
import 'package:adzetera_frontend/consumer/SurveyCo/views/survey_view.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../CreateAccount/CreateAccountView/create_account_view.dart';
import '../../../account/account_view/account_view.dart';
import '../../../widget/color_text.dart';
import '../../SignInCo/views/signin_co_view.dart';

class SurveyHomeView extends GetView<SurveyHomeController> {
  SurveyHomeController _controller = Get.put(SurveyHomeController());
  TextEditingController text = TextEditingController();
  var list = [
    "Survey-Topic-1",
    'Survey-Topic-2',
    'Survey-Topic-3',
    'Survey-Topic-4',
    'Survey-Topic-5',
    'Survey-Topic-6',
    'Survey-Topic-7',
    'Survey-Topic-8',
    'Survey-Topic-9'
  ];
  var image = [
    "assets/images/alogo.png",
    'assets/images/cokelogo.png',
    'assets/images/domlogo.png',
    'assets/images/flogo.png',
    'assets/images/hlogo.png',
    'assets/images/llogo.png',
    'assets/images/mclogo.png',
    'assets/images/peplogo.png',
    'assets/images/vlogo.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(142.0),
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

            // 1.h.heightBox,
            Container(
              height: 10.h,
              color: tealclr,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 7.h,
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
                      //     keyboardType: TextInputType.text,

                      //     decoration: InputDecoration(
                      //         hintText: 'Search Survey by title',
                      //         prefixIcon: Icon(Icons.search)),

                      //     // decoration: const InputDecoration(
                      //     //   enabledBorder: OutlineInputBorder(
                      //     //     borderSide: BorderSide(
                      //     //       color: Color(0xff4DC0C9),
                      //     //     ),
                      //     //   ),
                      //     //   focusedBorder: OutlineInputBorder(
                      //     //     borderSide:
                      //     //         BorderSide(color: Color(0xffA5ABB3), width: 0.5),
                      //     //   ),
                      //     // ),
                      //   ),
                      // ),
                      const Icon(
                        Icons.mic,
                        color: Colors.white,
                        size: 30,
                      ).onTap(() {
                        Get.dialog(Center(
                          child: AlertDialog(
                              backgroundColor: Colors.white,
                              // title: Text('this is ad'),
                              content: Container(
                                decoration:
                                    BoxDecoration(color: Colors.transparent),
                                height: 70.h,
                                width: 70.w,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: SizedBox.expand(
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/ferrari.jpg',
                                              fit: BoxFit.contain,
                                              // height: 70.h,
                                              // width: double.maxFinite,
                                            ),
                                            // Expanded(
                                            //     child: SizedBox.expand(
                                            //   child: Row(
                                            //     children: [
                                            //       Container(
                                            //         child: Text('INR-100'),
                                            //       ),
                                            //       Container(
                                            //         child: Icon(Icons
                                            //             .thumb_up_off_alt_sharp),
                                            //       ),
                                            //       Container(
                                            //         child: Icon(Icons.close),
                                            //       )
                                            //     ],
                                            //   ),
                                            // ))
                                          ],
                                        ),
                                      ),
                                    ),
                                    Row(
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.start,
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text(
                                            'INR-100',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                        2.w.widthBox,
                                        Container(
                                          child: Icon(Icons.thumb_up),
                                        ),
                                        Spacer(),
                                        Container(
                                          child: Icon(Icons.close),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                // color: Colors.white,
                              )),
                        ));
                      })
                    ],
                  ).paddingOnly(left: 10, top: 10, right: 10),
                  1.h.heightBox
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Text(
            'Available Survey',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () => (Get.to(
                SurveyView(),
              )),
              child: GridView.builder(
                itemCount: 27,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(
                              image[index % 9].toString(),
                              height: 8.h,
                              // scale: 10,
                            ),
                          ),
                          1.h.heightBox,
                          Text(list[index % 9].toString())
                        ],
                      ),
                      height: 10.h,
                    ),
                    elevation: 4,
                    borderOnForeground: true,
                    // shadowColor: Colors.amber,
                    margin: EdgeInsets.all(10),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2.h,
                    mainAxisSpacing: 2.h),
              ),
            ),
          )
        ],
      ),
    );
  }
}
