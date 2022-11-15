import 'package:adzetera_frontend/consumer/NetworkingCo/controllers/main_net_co_controller.dart';
import 'package:adzetera_frontend/consumer/NetworkingCo/views/friends_view.dart';
import 'package:adzetera_frontend/consumer/NetworkingCo/views/home_view_net.dart';
import 'package:adzetera_frontend/consumer/NetworkingCo/views/notification_co_view.dart';
import 'package:adzetera_frontend/consumer/NetworkingCo/views/profile_co_view.dart';
import 'package:adzetera_frontend/widget/color_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../CreateAccount/CreateAccountView/create_account_view.dart';
import '../../../account/account_view/account_view.dart';

class MainNetCoView extends GetView<SingleTickerProviderStateMixin> {
  @override
  MainNetCoController _controller = Get.put(MainNetCoController());

  MainNetCoView({Key? key}) : super(key: key);

  TextEditingController text = TextEditingController();

  // @override
  // void initState() {
  //   // super.initState();
  //   controller.tabcontroller = TabController(length: 4, vsync: TickerProvider.);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tealclr,
      body: SafeArea(
        child: DefaultTabController(
          length: 5,
          // animationDuration: Duration(seconds: 1),
          child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  PreferredSize(
                    preferredSize: Size.fromHeight(25.0),
                    child: SliverAppBar(
                      pinned: false,
                      brightness: Brightness.light,
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
                      centerTitle: false,
                      automaticallyImplyLeading: false,
                      floating: true,
                      // leading:
                      // AnimSearchBar(
                      //     width: 400, textController: text, onSuffixTap: () {}),
                      // InkWell(
                      //   // onTap: () => Get.to(AccountView()),
                      //   child: Icon(
                      //     Icons.search,
                      //     size: 30,
                      //   ),
                      //   // child: Image.asset(
                      //   //   'assets/icons/account.png',
                      //   //   color: Colors.white,
                      //   //   scale: 1.7,
                      //   // ),
                      // ),
                      actions: [
                        // Icon(Icons.search),
                        // Icon(Icons.message)
                        Text('Advertiser').p(10).onTap(() {
                          Get.to(CreateAccountView(),
                              transition: Transition.cupertino,
                              duration: Duration(seconds: 2),
                              curve: Curves.easeOutSine);
                        }).pOnly(right: 10),
                        // Text('Advertiser').pOnly(right: 10,)
                        // IconButton(
                        //   icon: Icon(
                        //     Icons.messenger_outline,
                        //     color: Colors.white,
                        //   ),
                        //   iconSize: 20.0, onPressed: () {},
                        //   // onPressed: () => print('Messenger'),
                        // ),
                      ],
                    ),
                  ),
                  SliverPersistentHeader(
                    delegate: _SliverAppBarDelegate(
                      const TabBar(
                        // controller: controller.tabcontroller,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(
                              icon: Icon(
                            Icons.home,
                            size: 25,
                          )),
                          Tab(icon: Icon(Icons.people, size: 25)),
                          Tab(
                              icon: Icon(
                            Icons.notifications_none,
                            size: 25,
                          )),
                          // Tab(icon: Icon(MdiIcons.bellOutline, size: 25)),
                          Tab(
                              icon: Icon(Icons.supervised_user_circle_outlined,
                                  size: 25)),
                          Tab(icon: Icon(Icons.menu, size: 25)),
                        ],
                      ),
                    ),
                    pinned: true,
                  ),
                ];
              },
              body: TabBarView(
                // controller: controller.tabcontroller,
                children: [
                  HomeViewNet(),
                  FirendsView(),
                  NotificationCoView(),
                  ProfileCoView(),
                  AccountView()
                ],
              )),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      // height: 100,
      color: tealclr,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _tabBar,
          // 2.h.heightBox,
          // Container(
          //   color: Colors.amber,
          //   // height: 10.h,
          // )
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
