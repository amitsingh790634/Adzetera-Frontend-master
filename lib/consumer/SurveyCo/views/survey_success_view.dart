import 'package:adzetera_frontend/widget/color_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SurveySuccessView extends StatelessWidget {
  const SurveySuccessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Image.asset(
                'assets/images/payment.png',
                scale: 2.5,
              ),
            ),
          ),
          Center(
            child: Container(
              child: Text(
                'You have Earn ₹ 50 by filling the survey Successfully!',
                style: TextStyle(
                  color: Color(0xffC0C0C0),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ).paddingAll(10)),
    );
  }
}
