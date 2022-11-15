import 'package:adzetera_frontend/consumer/SurveyCo/views/survey_success_view.dart';
import 'package:adzetera_frontend/widget/color_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class SurveyFilledView extends StatelessWidget {
  const SurveyFilledView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: () => Get.to(SurveySuccessView()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text(
                  'Your survey form for (Topic name)',
                  style: txtbig1Black,
                ),
              ),
              1.h.heightBox,
              Container(
                child: Text(
                  "Your responce has been recorded sucessfully!",
                  style: texthrayL,
                ),
              ),
              3.h.heightBox,
              Container(
                child: Text(
                  'See previous responses',
                  style: txtblues,
                ),
              ),
              1.h.heightBox,
              Container(
                child: Text(
                  'Edit your response',
                  style: txtblues,
                ),
              ),
              1.h.heightBox,
              Container(
                child: Text(
                  'Submit another response',
                  style: txtblues,
                ),
              ),
              7.h.heightBox,
              Center(
                child: Container(
                  child: Text(
                    'This content is neither created nor endorsed by Adzetera',
                    style: texthrays,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Report Abuse - Terms of Services - Privacy Policy',
                  style: texthrays,
                ),
              )
            ],
          ).paddingAll(10),
        ),
      ),
    );
  }
}
