import 'package:adzetera_frontend/consumer/SurveyCo/controllers/survey_home_controller.dart';
import 'package:adzetera_frontend/consumer/SurveyCo/views/demo_survey_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../widget/color_text.dart';

class SurveyView extends GetView<SurveyHomeController> {
  var list = [
    "Survey-1",
    'Survey-2',
    'Survey-3',
    'Survey-4',
    'Survey-5',
    'Survey-6',
    'Survey-7',
    'Survey-8',
    'Survey-9',
    'Survey-10',
    'Survey-11'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () => Get.to(
                  DemoSurveyView(),
                ),
                child: Card(
                  child: Container(
                    child: Text(list[index]).paddingAll(20),
                    height: 8.h,
                  ),
                  elevation: 4,
                  borderOnForeground: true,
                  // shadowColor: Colors.amber,
                  margin: EdgeInsets.all(10),
                ),
              );
            }),
      ),
    );
  }
}
