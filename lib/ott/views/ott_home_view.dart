import 'package:adzetera_frontend/ott/controllers/ott_home_controller.dart';
import 'package:adzetera_frontend/ott/views/movie_detail_view.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../CreateAccount/CreateAccountView/create_account_view.dart';
import '../../account/account_view/account_view.dart';
import '../../consumer/SignInCo/views/signin_co_view.dart';
import '../../widget/color_text.dart';
import 'movie_detail_netflix_view.dart';

class OttHomeView extends GetView<OttHomeController> {
  OttHomeController controller = Get.put(OttHomeController());
  TextEditingController text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(118.0),
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
              leading:
                  // InkWell(
                  //   onTap: () {
                  //     Get.to(CreateAccountView(),
                  //         transition: Transition.cupertino,
                  //         duration: Duration(seconds: 2),
                  //         curve: Curves.easeOutSine);
                  //   },
                  // child:
                  Image.asset(
                'assets/icons/account.png',
                color: Colors.white,
                scale: 1.7,
                // ),
              ).onTap(() {
                Get.to(AccountView());
                // Get.to(CreateAccountView(),
                //     transition: Transition.cupertino,
                //     duration: Duration(seconds: 2),
                //     curve: Curves.easeOutSine);
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
              color: tealclr,
              child: Column(
                children: [
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
                      //     keyboardType: TextInputType.text,
                      //     decoration: const InputDecoration(
                      //         hintText: 'Search video by name/title',
                      //         prefixIcon: Icon(Icons.search)),
                      //   ),
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
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 20.h,
              width: 100.w,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/Stow.png'),
                centerSlice: Rect.largest,
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'STOWAWAY',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  1.h.heightBox,
                  Text(
                    '98% matching your genre choice',
                    style: txtWhite,
                  ),
                  1.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: bluebtnclr,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              'Watch Now',
                              style: txtWhite,
                            ).paddingOnly(
                                left: 10, right: 10, top: 2, bottom: 2),
                          ),
                          Icon(
                            Icons.watch_later_outlined,
                            size: 12,
                            color: Colors.white,
                          ),
                          Text(
                            '1hr 56min',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.share_outlined,
                                color: Colors.white,
                              ),
                              Text(
                                'Share',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          1.w.widthBox,
                          Column(
                            children: [
                              Icon(
                                Icons.web_asset_rounded,
                                color: Colors.white,
                              ),
                              Text(
                                'Add to Watch',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ).paddingAll(1.h),
            ),
            Text(
              'Video by Adzetera',
              style: txtbigBlack,
            ).pOnly(top: 10, left: 10),
            InkWell(
              onTap: () => Get.to(
                MovieDetailView(),
              ),
              child: Container(
                height: 25.h,
                // flex: 1,
                child: ListView.builder(
                    itemCount: controller.mList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Container(
                          child: Image.asset(controller.mList[index]),
                          height: 8.h,
                        ),
                        elevation: 4,
                        borderOnForeground: true,
                        // shadowColor: Colors.amber,
                        margin: EdgeInsets.all(10),
                      );
                    }),
              ),
            ),
            Text(
              'Trending on Amazon Prime',
              style: txtbigBlack,
            ).pOnly(top: 10, left: 10),
            InkWell(
              onTap: () => Get.to(
                MovieDetailNetflixView(),
              ),
              child: Container(
                height: 25.h,
                // flex: 1,
                child: ListView.builder(
                    itemCount: controller.mList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Container(
                          child: Image.asset(controller.mList[index]),
                          height: 8.h,
                        ),
                        elevation: 4,
                        borderOnForeground: true,
                        // shadowColor: Colors.amber,
                        margin: EdgeInsets.all(10),
                      );
                    }),
              ),
            ),
            Text(
              'Horror Originals',
              style: txtbigBlack,
            ).pOnly(top: 10, left: 10),
            Container(
              height: 25.h,
              // flex: 1,
              child: ListView.builder(
                  itemCount: controller.m2List.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Container(
                        child: Image.asset(controller.m2List[index]),
                        height: 8.h,
                      ),
                      elevation: 4,
                      borderOnForeground: true,
                      // shadowColor: Colors.amber,
                      margin: EdgeInsets.all(10),
                    );
                  }),
            ),
            Text(
              'Popular on Netflix',
              style: txtbigBlack,
            ).pOnly(top: 10, left: 10),
            Container(
              height: 25.h,
              // flex: 1,
              child: ListView.builder(
                  itemCount: controller.m3List.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Container(
                        child: Image.asset(controller.m3List[index]),
                        height: 8.h,
                      ),
                      elevation: 4,
                      borderOnForeground: true,
                      // shadowColor: Colors.amber,
                      margin: EdgeInsets.all(10),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
