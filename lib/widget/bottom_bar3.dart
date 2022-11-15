import 'package:adzetera_frontend/widget/color_text.dart';
import 'package:flutter/material.dart';

import '../MyAds/myads_view/myads_view.dart';
import '../Shop/OfferZone/views/offer_zone_view.dart';
import '../Shop/account_shop/view/account_shop_view.dart';
import '../Shop/home/view/grocery.dart';
import '../Shop/home/view/grocery_categories_view.dart';
import '../Shop/home/view/home_shop_view.dart';
import '../Shop/search/view/search_view.dart';
import '../account/account_view/account_view.dart';
import '../consumer/NetworkingCo/views/home_view_net.dart';
import '../consumer/NetworkingCo/views/main_net_co_view.dart';
import '../consumer/SurveyCo/views/survey_home_view.dart';
import '../home/views/home_view.dart';
import '../notification/notivication_view/notivication_view.dart';
import '../ott/views/ott_home_view.dart';
import '../wallet/wallet_view/wallet_view.dart';

class Bottom3 extends StatefulWidget {
  int? index;
  Bottom3({Key? key, this.index}) : super(key: key);

  @override
  State<Bottom3> createState() => _Bottom3State();
}

class _Bottom3State extends State<Bottom3> {
  int _currentIndex = 0;
  List pageData = [
    GroceryView(),
    GroceryCategoriesView(),
    SearchView(),
    OfferZoneView(),
    AccountShopView()
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pageData[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: appbg,
        // elevation: 30,

        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedFontSize: 15,
        unselectedItemColor: line2clr,
        unselectedFontSize: 13,
        selectedItemColor: bluebtnclr,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/h1.png")),
              label: "Home",
              backgroundColor: line2clr),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/h2.png")),
              label: "Categories",
              backgroundColor: line2clr),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/h3.png")),
              label: 'Search',
              backgroundColor: line2clr),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/h4.png")),
              label: 'Offers',
              backgroundColor: line2clr),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/h5.png")),
              label: 'Account',
              backgroundColor: line2clr),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
