// import 'package:adzetera_frontend/SignIn/SigninView/signin_view.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_overboard/flutter_overboard.dart';
// import 'package:introduction_screen/introduction_screen.dart';
// import 'package:get/get.dart';
// import 'package:lottie/lottie.dart';
// import 'package:sizer/sizer.dart';
// import 'package:velocity_x/velocity_x.dart';

// import '../../WelComeScreen/welcome_screen.dart';

// class OnBoardingPage extends StatefulWidget {
//   @override
//   _OnBoardingPageState createState() => _OnBoardingPageState();
// }

// class _OnBoardingPageState extends State<OnBoardingPage>
//     with TickerProviderStateMixin {
//   final introKey = GlobalKey<IntroductionScreenState>();
//   final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

//   void _onIntroEnd(context) {
//     Navigator.of(context).push(
//       MaterialPageRoute(builder: (_) => SigninView()),
//     );
//   }

//   Widget _buildFullscreenImage() {
//     return Image.asset(
//       'assets/images/splash.png',
//       fit: BoxFit.cover,
//       scale: 2,
//       height: double.infinity,
//       width: double.infinity,
//       alignment: Alignment.center,
//     );
//   }

//   // Widget _buildImage(String assetName, [double width = 350]) {
//   //   return Image.asset('assets/$assetName', width: width);
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _globalKey,
//       body: OverBoard(
//         allowScroll: true,
//         pages: pages,
//         showBullets: true,
//         inactiveBulletColor: Colors.blue,
//         // backgroundProvider: NetworkImage('https://picsum.photos/720/1280'),
//         skipCallback: () {
//           Get.to(SigninView(),
//               transition: Transition.fadeIn, duration: Duration(seconds: 2));

//           // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           //   content: Text("Skip clicked"),
//           // ));
//         },
//         finishCallback: () {
//           Get.to(SigninView(),
//               transition: Transition.rightToLeftWithFade,
//               duration: Duration(seconds: 2));
//           // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           //   content: Text("Finish clicked"),
//           // ));
//         },
//       ),
//     );
//   }

//   final pages = [
//     // PageModel.withChild(
//     //     child: Column(
//     //       children: [
//     //         Lottie.asset('assets/images/movielottie.json', height: 50.h)
//     //             .centered(),
//     //       ],
//     //     ),
//     //     color: const Color(0xFF0097A7),
//     //     doAnimateChild: true),
//     PageModel(
//         color: const Color(0xFF0097A7),
//         imageAssetPath: 'assets/images/2.png',
//         title: 'Screen 1',
//         body: 'Share your ideas with the team',
//         doAnimateImage: true),
//     PageModel(
//         color: const Color(0xFF536DFE),
//         imageAssetPath: 'assets/images/2.png',
//         title: 'Screen 2',
//         body: 'See the increase in productivity & output',
//         doAnimateImage: true),
//     PageModel(
//         color: const Color(0xFF9B90BC),
//         imageAssetPath: 'assets/images/2.png',
//         title: 'Screen 3',
//         body: 'Connect with the people from different places',
//         doAnimateImage: true),
//     PageModel.withChild(
//         child: Padding(
//           padding: EdgeInsets.only(bottom: 25.0),
//           child:
//               Image.asset('assets/images/2.png', width: 300.0, height: 300.0),
//         ),
//         color: const Color(0xFF5886d6),
//         doAnimateChild: true)
//   ];
// Widget build(BuildContext context) {
//   const bodyStyle = TextStyle(fontSize: 19.0);

//   const pageDecoration = const PageDecoration(
//       titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
//       bodyTextStyle: bodyStyle,

//       // bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
//       pageColor: Color(0xff00a8ad),
//       imagePadding: EdgeInsets.zero,
//       imageFlex: 6);

//   return

//   IntroductionScreen(
//     key: introKey,
//     globalBackgroundColor: Color(0xff00a8ad),
//     globalHeader: Align(
//       alignment: Alignment.topRight,
//       child: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 16, right: 16),
//           // child: _buildImage('flutter.png', 100),
//         ),
//       ),
//     ),
//     pages: [
//       PageViewModel(
//         title: "",
//         body: "",
//         image: Lottie.asset('assets/images/movielottie.json', height: 50.h),
//         // image: _buildImage('img1.jpg'),
//         decoration: pageDecoration,
//       ),
//       PageViewModel(
//         title: "",
//         body: "",
//         image:
//             Lottie.asset('assets/images/shoppinglottie.json', height: 50.h),
//         decoration: pageDecoration,
//       ),
//       PageViewModel(
//         title: "",
//         body: "",
//         image: Lottie.asset('assets/images/sociallottie.json', height: 50.h),
//         decoration: pageDecoration,
//       ),
//       PageViewModel(
//         title: "",
//         body: "",
//         image: Image.asset(
//           'assets/images/2.png',
//           height: 50.h,
//           scale: 1,
//         ),
//         decoration: pageDecoration.copyWith(
//           contentMargin: const EdgeInsets.symmetric(horizontal: 0),
//           fullScreen: false,
//           bodyFlex: 1,
//           imageFlex: 10,
//         ),
//       ),
//     ],
//     onDone: () => _onIntroEnd(context),
//     //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
//     showSkipButton: true,
//     skipOrBackFlex: 0,
//     nextFlex: 0,
//     showBackButton: false,
//     //rtl: true, // Display as right-to-left
//     back: const Icon(Icons.arrow_back),
//     skip: const Text('Skip',
//         style:
//             TextStyle(fontWeight: FontWeight.w600, color: Color(0xff00a8ad))),
//     next: const Icon(
//       Icons.arrow_forward,
//       color: Color(0xff00a8ad),
//     ),
//     done: const Text('Done',
//         style:
//             TextStyle(fontWeight: FontWeight.w600, color: Color(0xff00a8ad))),
//     curve: Curves.fastLinearToSlowEaseIn,
//     controlsMargin: const EdgeInsets.all(16),
//     controlsPadding: kIsWeb
//         ? const EdgeInsets.all(12.0)
//         : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
//     dotsDecorator: const DotsDecorator(
//       size: Size(10.0, 10.0),
//       activeColor: Color(0xff00a8ad),
//       color: Color(0xFFBDBDBD),
//       activeSize: Size(22.0, 10.0),
//       activeShape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(Radius.circular(25.0)),
//       ),
//     ),
//     dotsContainerDecorator: const ShapeDecoration(
//       color: Colors.black87,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(Radius.circular(8.0)),
//       ),
//     ),
//   );
// }
// }

import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../SignIn/SigninView/signin_view.dart';

final pages = [
  const PageData(
    icon: Icons.bubble_chart,
    title: "Local news\nstories",
    bgColor: Color(0xFF0043D0),
    textColor: Colors.white,
  ),
  const PageData(
    icon: Icons.format_size,
    title: "Choose your\ninterests",
    textColor: Colors.white,
    bgColor: Color(0xFFFDBFDD),
  ),
  const PageData(
    icon: Icons.hdr_weak,
    title: "Drag and\ndrop to move",
    bgColor: Color(0xFFFFFFFF),
  ),
];

class OnboardingExample extends StatelessWidget {
  const OnboardingExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ConcentricPageView(
        onFinish: () {
          Get.to(SigninView(),
              transition: Transition.circularReveal,
              duration: Duration(seconds: 2));
        },
        colors: pages.map((p) => p.bgColor).toList(),
        radius: screenWidth * 0.1,
        // curve: Curves.ease,
        nextButtonBuilder: (context) => Padding(
          padding: const EdgeInsets.only(left: 3), // visual center
          child: Icon(
            Icons.navigate_next,
            size: screenWidth * 0.08,
          ),
        ),
        // itemCount: pages.length,
        // duration: const Duration(milliseconds: 1500),
        // opacityFactor: 2.0,
        // scaleFactor: 0.2,
        // verticalPosition: 0.7,
        // direction: Axis.vertical,
        itemCount: pages.length,
        // physics: NeverScrollableScrollPhysics(),
        itemBuilder: (index) {
          final page = pages[index % pages.length];
          return SafeArea(
            child: _Page(page: page),
          );
        },
      ),
    );
  }
}

class PageData {
  final String? title;
  final IconData? icon;
  final Color bgColor;
  final Color textColor;

  const PageData({
    this.title,
    this.icon,
    this.bgColor = Colors.white,
    this.textColor = Colors.black,
  });
}

class _Page extends StatelessWidget {
  final PageData page;

  const _Page({Key? key, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    space(double p) => SizedBox(height: screenHeight * p / 100);
    return Column(
      children: [
        space(10),
        _Image(
          page: page,
          size: 190,
          iconSize: 170,
        ),
        space(8),
        _Text(
          page: page,
          style: TextStyle(
            fontSize: screenHeight * 0.046,
          ),
        ),
      ],
    );
  }
}

class _Text extends StatelessWidget {
  const _Text({
    Key? key,
    required this.page,
    this.style,
  }) : super(key: key);

  final PageData page;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      page.title ?? '',
      style: TextStyle(
        color: page.textColor,
        fontWeight: FontWeight.w600,
        fontFamily: 'Helvetica',
        letterSpacing: 0.0,
        fontSize: 18,
        height: 1.2,
      ).merge(style),
      textAlign: TextAlign.center,
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({
    Key? key,
    required this.page,
    required this.size,
    required this.iconSize,
  }) : super(key: key);

  final PageData page;
  final double size;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    final bgColor = page.bgColor
        // .withBlue(page.bgColor.blue - 40)
        .withGreen(page.bgColor.green + 20)
        .withRed(page.bgColor.red - 100)
        .withAlpha(90);

    final icon1Color =
        page.bgColor.withBlue(page.bgColor.blue - 10).withGreen(220);
    final icon2Color = page.bgColor.withGreen(66).withRed(77);
    final icon3Color = page.bgColor.withRed(111).withGreen(220);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(60.0)),
        color: bgColor,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: RotatedBox(
              quarterTurns: 2,
              child: Icon(
                page.icon,
                size: iconSize + 20,
                color: icon1Color,
              ),
            ),
            right: -5,
            bottom: -5,
          ),
          Positioned.fill(
            child: RotatedBox(
              quarterTurns: 5,
              child: Icon(
                page.icon,
                size: iconSize + 20,
                color: icon2Color,
              ),
            ),
          ),
          Icon(
            page.icon,
            size: iconSize,
            color: icon3Color,
          ),
        ],
      ),
    );
  }
}
