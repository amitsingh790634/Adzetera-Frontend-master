import 'package:adzetera_frontend/consumer/SurveyCo/controllers/demo_survey_controller.dart';
import 'package:adzetera_frontend/consumer/SurveyCo/views/survey_filled_view.dart';
import 'package:adzetera_frontend/consumer/SurveyCo/views/survey_success_view.dart';
import 'package:adzetera_frontend/widget/color_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class DemoSurveyView extends StatefulWidget {
  @override
  State<DemoSurveyView> createState() => _DemoSurveyViewState();
}

class _DemoSurveyViewState extends State<DemoSurveyView> {
  int? _radioSelected;
  String _radioVal = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Demographic Survey ',
                style: txtbigBlack,
              ),
              1.h.heightBox,
              Text(
                '* Required',
                style: textReds,
              ),
              1.h.heightBox,
              const Text.rich(TextSpan(
                children: [
                  TextSpan(
                      text: 'How old are you? ',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff56616F))),
                  TextSpan(
                    text: '*',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Color(0xffEB001B)),
                  ),
                ],
              )),
              2.h.heightBox,
              Container(
                height: 20,
                width: 60.w,
                child: TextField(
                  decoration: InputDecoration(hintText: 'Your answer'),
                ),
              ),
              1.h.heightBox,
              Text.rich(TextSpan(
                children: [
                  TextSpan(
                      text: 'Where do you live (City and state) ',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff56616F))),
                  TextSpan(
                    text: '*',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Color(0xffEB001B)),
                  ),
                ],
              )),
              2.h.heightBox,
              Container(
                height: 20,
                width: 60.w,
                child: TextField(
                  decoration: InputDecoration(hintText: 'Your answer'),
                ),
              ),
              2.h.heightBox,
              Text(
                'What gender do you identify as?',
                style: textblack3L,
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: _radioSelected,
                    onChanged: (value) {
                      setState(() {
                        _radioSelected = value as int;
                        _radioVal = 'Check In';
                        // print(_radioVal);
                      });
                    },
                  ),
                  Text('Female')
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: _radioSelected,
                    onChanged: (value) {
                      setState(() {
                        _radioSelected = value as int;
                        _radioVal = 'Check In';
                        // print(_radioVal);
                      });
                    },
                  ),
                  Text('Male')
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: _radioSelected,
                    onChanged: (value) {
                      setState(() {
                        _radioSelected = value as int;
                        _radioVal = 'Check In';
                        // print(_radioVal);
                      });
                    },
                  ),
                  Text('Prefer not to say')
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 4,
                    groupValue: _radioSelected,
                    onChanged: (value) {
                      setState(() {
                        _radioSelected = value as int;
                        _radioVal = 'Check In';
                        // print(_radioVal);
                      });
                    },
                  ),
                  Text('Other')
                ],
              ),
              Text(
                'What is your employment status?',
                style: textblack3L,
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: _radioSelected,
                    onChanged: (value) {
                      setState(() {
                        _radioSelected = value as int;
                        _radioVal = 'Check In';
                        // print(_radioVal);
                      });
                    },
                  ),
                  Text('Umemployed')
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: _radioSelected,
                    onChanged: (value) {
                      setState(() {
                        _radioSelected = value as int;
                        _radioVal = 'Check In';
                        // print(_radioVal);
                      });
                    },
                  ),
                  Text('Employed')
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: _radioSelected,
                    onChanged: (value) {
                      setState(() {
                        _radioSelected = value as int;
                        _radioVal = 'Check In';
                        // print(_radioVal);
                      });
                    },
                  ),
                  Text('Self Employed')
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 4,
                    groupValue: _radioSelected,
                    onChanged: (value) {
                      setState(() {
                        _radioSelected = value as int;
                        _radioVal = 'Check In';
                        // print(_radioVal);
                      });
                    },
                  ),
                  Text('Other')
                ],
              ),
              Text(
                'What is your marital status?',
                style: textblack3L,
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: _radioSelected,
                    onChanged: (value) {
                      setState(() {
                        _radioSelected = value as int;
                        _radioVal = 'Check In';
                        // print(_radioVal);
                      });
                    },
                  ),
                  Text('Single')
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: _radioSelected,
                    onChanged: (value) {
                      setState(() {
                        _radioSelected = value as int;
                        _radioVal = 'Check In';
                        // print(_radioVal);
                      });
                    },
                  ),
                  Text('Married')
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: _radioSelected,
                    onChanged: (value) {
                      setState(() {
                        _radioSelected = value as int;
                        _radioVal = 'Check In';
                        // print(_radioVal);
                      });
                    },
                  ),
                  Text('Divorced')
                ],
              ),
              // Row(
              //   children: [
              //     Radio(
              //       value: 4,
              //       groupValue: _radioSelected,
              //       onChanged: (value) {
              //         setState(() {
              //           _radioSelected = value as int;
              //           _radioVal = 'Check In';
              //           // print(_radioVal);
              //         });
              //       },
              //     ),
              //     Text('Other')
              //   ],
              // ),
              Text(
                'How many childern do you have?',
                style: textblack3L,
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: _radioSelected,
                    onChanged: (value) {
                      setState(() {
                        _radioSelected = value as int;
                        _radioVal = 'Check In';
                        // print(_radioVal);
                      });
                    },
                  ),
                  Text('none')
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: _radioSelected,
                    onChanged: (value) {
                      setState(() {
                        _radioSelected = value as int;
                        _radioVal = 'Check In';
                        // print(_radioVal);
                      });
                    },
                  ),
                  Text('one')
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: _radioSelected,
                    onChanged: (value) {
                      setState(() {
                        _radioSelected = value as int;
                        _radioVal = 'Check In';
                        // print(_radioVal);
                      });
                    },
                  ),
                  Text('two')
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 4,
                    groupValue: _radioSelected,
                    onChanged: (value) {
                      setState(() {
                        _radioSelected = value as int;
                        _radioVal = 'Check In';
                        // print(_radioVal);
                      });
                    },
                  ),
                  Text('three')
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 5,
                    groupValue: _radioSelected,
                    onChanged: (value) {
                      setState(() {
                        _radioSelected = value as int;
                        _radioVal = 'Check In';
                        // print(_radioVal);
                      });
                    },
                  ),
                  Text('four or more')
                ],
              ),
              InkWell(
                onTap: () => Get.to(
                  SurveyFilledView(),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: bluebtnclr,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ).paddingOnly(top: 5, bottom: 5, left: 30, right: 30),
                ),
              )
            ],
          ).paddingAll(10),
        ),
      ),
    );
  }
}
