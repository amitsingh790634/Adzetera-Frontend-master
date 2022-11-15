import 'package:adzetera_frontend/ProductDetail/views/product_detail_view.dart';
import 'package:adzetera_frontend/Shop/OfferZone/views/offer_zone_view.dart';
import 'package:adzetera_frontend/SplashScreen/SplashScreen.dart';
import 'package:adzetera_frontend/SplashScreen/splash_new.dart';
import 'package:adzetera_frontend/onboarding/views/onboarding_view.dart';
import 'package:adzetera_frontend/refer/refer_view/refer_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:adzetera_frontend/widget/color_text.dart';

import 'SignIn/SigninView/signin_view.dart';
import 'otp/otp_controller/otp_controller.dart';
import 'otp/otp_view/otp_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Roboto',
          textTheme: GoogleFonts.robotoTextTheme(
            Theme.of(context).textTheme,
          ),
          // primarySwatch: Colors.amber,
        ),
        // home: const SplashScreen(),
        home: SplashNew(),
        // SigninView(),
      );
    });
  }
}
