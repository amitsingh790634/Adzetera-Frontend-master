import 'package:adzetera_frontend/widget/color_text.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../MyAds/myads_view/myads_view.dart';
import '../NewCampaign/views/new_campaign_view.dart';
import '../account/account_view/account_view.dart';
import '../home/views/home_view.dart';
import '../notification/notivication_view/notivication_view.dart';
import '../wallet/wallet_view/wallet_view.dart';

class Bottom1 extends StatefulWidget {
  int? index;
  Bottom1({Key? key, this.index}) : super(key: key);

  @override
  State<Bottom1> createState() => _Bottom1State();
}

class _Bottom1State extends State<Bottom1> {
  int _currentIndex = 0;
  List pageData = [
    HomeView(),
    MyAdsView(),
    NewCampaignView(),
    // WalletView(),
    AccountView(),
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
        backgroundColor: whiteclr,
        index: _currentIndex,
        color: tealclr,

        height: 60,
        // letIndexChange: tru,
        buttonBackgroundColor: tealclr,
        animationCurve: Curves.easeInQuart,
        items: [
          ImageIcon(
            AssetImage("assets/icons/home.png"),
            color: whiteclr,
          ),
          ImageIcon(
            AssetImage("assets/icons/ads1.png"),
            color: whiteclr,
          ),
          Icon(
            Icons.add_box,
            color: whiteclr,
          ),
          ImageIcon(
            AssetImage("assets/icons/account.png"),
            color: whiteclr,
          ),
          // Column(
          //   children: [
          //     ImageIcon(AssetImage("assets/icons/ott.png")),
          //     Text(
          //       'Streaming',
          //       softWrap: true,
          //       maxLines: 1,
          //     )
          //   ],
          // ),
        ],

        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),

      // BottomNavigationBar(
      //   backgroundColor: appbg,
      //   // elevation: 30,

      //   currentIndex: _currentIndex,
      //   type: BottomNavigationBarType.fixed,
      //   iconSize: 30,
      //   selectedFontSize: 15,
      //   unselectedItemColor: line2clr,
      //   unselectedFontSize: 13,
      //   selectedItemColor: bluebtnclr,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(AssetImage("assets/icons/home.png")),
      //         label: "Home",
      //         backgroundColor: line2clr),
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(AssetImage("assets/icons/ads1.png")),
      //         label: "Ads",
      //         backgroundColor: line2clr),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.add_box),
      //         // ImageIcon(AssetImage("assets/icons/notification.png")),
      //         label: 'Add ADS',
      //         backgroundColor: line2clr),
      //     // BottomNavigationBarItem(
      //     //     icon: ImageIcon(AssetImage("assets/icons/wallet.png")),
      //     //     label: 'Wallet',
      //     //     backgroundColor: line2clr),
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(AssetImage("assets/icons/account.png")),
      //         label: 'Account',
      //         backgroundColor: line2clr),
      //   ],
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      // ),
    );
  }
}
