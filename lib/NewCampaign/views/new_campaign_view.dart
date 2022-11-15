import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widget/color_text.dart';
import '../controlllers/new_campaign_controller.dart';

class NewCampaignView extends GetView<NewCampaignController> {
  var checkBoxValue = true;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Scaffold(
          appBar: AppBar(
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
            automaticallyImplyLeading: false,
            actions: [
              Center(
                child: Text(
                  'New Campaign',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto'),
                ),
              ).paddingOnly(right: 10),
            ],
          ),
          // appBar: AppBar(leading: Icon(Icons.arrow_back_sharp)),
          body: SingleChildScrollView(
              child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // AppBar(
                  //     backgroundColor: Colors.transparent,
                  //     elevation: 0,
                  //     automaticallyImplyLeading: false,
                  //     iconTheme: IconThemeData(color: blackbtnClr),
                  //     title: Text(
                  //       'New Campaign',
                  //       style: apptitle,
                  //     )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      2.h.heightBox,
                      Text('Product/Services',
                          // text: 'Company Name',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff56616F))),

                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff4DC0C9),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA5ABB3), width: 0.5),
                          ),
                        ),
                      ),
                      1.h.heightBox,
                      Text('Brand',
                          // text: 'Company Name',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff56616F))),
                      // 1.h.heightBox,
                      TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: const InputDecoration(
                          // suffixIcon: Icon(Icons.visibility),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff4DC0C9),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA5ABB3), width: 0.5),
                          ),
                        ),
                      ),
                      Text('Target Region',
                          // text: 'Company Name',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff56616F))),
                      // 1.h.heightBox,
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff4DC0C9),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA5ABB3), width: 0.5),
                          ),
                          suffixIcon: Icon(Icons.arrow_drop_down, size: 30),
                        ),
                      ),
                      1.h.heightBox,
                      Text('Target Age',
                          // text: 'Company Name',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff56616F))),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff4DC0C9),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA5ABB3), width: 0.5),
                          ),
                        ),
                      ),
                      1.h.heightBox,
                      Text('Campaign Budget',
                          // text: 'Company Name',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff56616F))),
                      TextFormField(
                        keyboardType: TextInputType.streetAddress,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff4DC0C9),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA5ABB3), width: 0.5),
                          ),
                        ),
                      ),
                      1.h.heightBox,
                      Text('Pay Per View',
                          // text: 'Company Name',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff56616F))),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff4DC0C9),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA5ABB3), width: 0.5),
                          ),
                        ),
                      ),
                      Text('Reach (Automated)',
                          // text: 'Company Name',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff56616F))),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff4DC0C9),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA5ABB3), width: 0.5),
                          ),
                        ),
                      ),
                      Text('Start Date',
                          // text: 'Company Name',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff56616F))),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff4DC0C9),
                            ),
                          ),
                          suffixIcon: Icon(Icons.calendar_month),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA5ABB3), width: 0.5),
                          ),
                        ),
                      ),
                      Text('End Date',
                          // text: 'Company Name',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff56616F))),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff4DC0C9),
                            ),
                          ),
                          suffixIcon: Icon(Icons.calendar_month),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA5ABB3), width: 0.5),
                          ),
                        ),
                      ),
                    ],
                  ).paddingOnly(left: 10, right: 10, bottom: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: bluebtnclr,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Text(
                      "Next",
                      style: btntxtWhiteL,
                    ).centered().pOnly(top: 2.h, bottom: 2.h),
                  ).centered().pOnly(right: 10, left: 10, bottom: 10),
                  1.h.heightBox
                ],
              ),
            ),
          )));
    });
  }
}
