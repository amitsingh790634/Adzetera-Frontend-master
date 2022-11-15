import 'package:adzetera_frontend/widget/color_text.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../MyAds/myads_view/myads_view.dart';
import '../Shop/home/view/home_shop_view.dart';
import '../account/account_view/account_view.dart';
import '../consumer/NetworkingCo/views/home_view_net.dart';
import '../consumer/NetworkingCo/views/main_net_co_view.dart';
import '../consumer/SurveyCo/views/survey_home_view.dart';
import '../home/views/home_view.dart';
import '../notification/notivication_view/notivication_view.dart';
import '../ott/views/ott_home_view.dart';
import '../wallet/wallet_view/wallet_view.dart';

class Bottom2 extends StatefulWidget {
  int? index;
  Bottom2({Key? key, this.index}) : super(key: key);

  @override
  State<Bottom2> createState() => _Bottom2State();
}

class _Bottom2State extends State<Bottom2> {
  int _currentIndex = 0;
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  List pageData = [
    MainNetCoView(),
    SurveyHomeView(),
    HomeShopView(),
    // HomeShopView(),
    OttHomeView()
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pageData[_currentIndex]),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: whitebtnclr,
        index: _currentIndex,
        color: tealclr,
        animationCurve: Curves.easeInQuart,

        height: 60,
        // letIndexChange: tru,
        buttonBackgroundColor: tealclr,
        // animationCurve: Curves.bounceOut,
        items: [
          ImageIcon(
            AssetImage("assets/icons/global.png"),
            color: whiteclr,
          ),
          ImageIcon(
            AssetImage("assets/icons/survey.png"),
            color: whiteclr,
          ),
          ImageIcon(
            AssetImage("assets/icons/shop.png"),
            color: whiteclr,
          ),
          // ImageIcon(
          //   AssetImage("assets/icons/shop2.png"),
          //   color: whiteclr,
          // ),
          ImageIcon(
            AssetImage("assets/icons/ott.png"),
            color: whiteclr,
          ),
        ],
        // elevation: 30,

        // currentIndex: _currentIndex,
        // type: BottomNavigationBarType.fixed,
        // iconSize: 30,
        // selectedFontSize: 15,
        // unselectedItemColor: line2clr,
        // unselectedFontSize: 13,
        // selectedItemColor: tealclr,
        // items: const <BottomNavigationBarItem>[
        //   BottomNavigationBarItem(
        //       icon: ImageIcon(AssetImage("assets/icons/global.png")),
        //       label: "Social",
        //       backgroundColor: line2clr),
        //   BottomNavigationBarItem(
        //       icon: ImageIcon(AssetImage("assets/icons/survey.png")),
        //       label: "Survey",
        //       backgroundColor: line2clr),
        //   BottomNavigationBarItem(
        //       icon: ImageIcon(AssetImage("assets/icons/shop.png")),
        //       label: 'Shop',
        //       backgroundColor: line2clr),
        //   BottomNavigationBarItem(
        //       icon: ImageIcon(AssetImage("assets/icons/shop2.png")),
        //       label: 'Services',
        //       backgroundColor: line2clr),
        //   BottomNavigationBarItem(
        //       icon: ImageIcon(AssetImage("assets/icons/ott.png")),
        //       label: 'Streaming',
        //       backgroundColor: line2clr),
        // ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
