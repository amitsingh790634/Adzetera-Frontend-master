import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widget/color_text.dart';
import '../controlllers/new_campaign_controller.dart';

class NewCampaign2View extends GetView<NewCampaignController> {
  var checkBoxValue = true;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Scaffold(
          // appBar: AppBar(leading: Icon(Icons.arrow_back_sharp)),
          body: SingleChildScrollView(
              child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: constraint.maxHeight),
        child: IntrinsicHeight(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  automaticallyImplyLeading: true,
                  iconTheme: IconThemeData(color: blackbtnClr),
                  title: Text(
                    'New Campaign',
                    style: apptitle,
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  2.h.heightBox,
                  Text('Ad Type',
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
                        borderSide:
                            BorderSide(color: Color(0xffA5ABB3), width: 0.5),
                      ),
                      suffixIcon: Icon(Icons.arrow_drop_down, size: 30),
                    ),
                  ),
                  1.h.heightBox,
                  Text('Campaign Name',
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
                        borderSide:
                            BorderSide(color: Color(0xffA5ABB3), width: 0.5),
                      ),
                    ),
                  ),
                  Text('Add Preview Balance',
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
                        borderSide:
                            BorderSide(color: Color(0xffA5ABB3), width: 0.5),
                      ),
                      // suffixIcon: Icon(Icons.arrow_drop_down, size: 30),
                    ),
                  ),
                  1.h.heightBox,
                  Text('Balance Payble',
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
                        borderSide:
                            BorderSide(color: Color(0xffA5ABB3), width: 0.5),
                      ),
                    ),
                  ),
                  1.h.heightBox,
                  Text('GST Number',
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
                        borderSide:
                            BorderSide(color: Color(0xffA5ABB3), width: 0.5),
                      ),
                    ),
                  ),
                  1.h.heightBox,
                  Text('Total Payble',
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
                        borderSide:
                            BorderSide(color: Color(0xffA5ABB3), width: 0.5),
                      ),
                    ),
                  ),
                  2.h.heightBox,
                  // Text('Reach (Automated)',
                  //     // text: 'Company Name',
                  //     style: TextStyle(
                  //         fontSize: 14,
                  //         fontWeight: FontWeight.normal,
                  //         color: Color(0xff56616F))),
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff4DC0C9),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffA5ABB3), width: 0.5),
                      ),
                    ),
                  ),
                ],
              ).paddingOnly(left: 15, right: 15, bottom: 10),
              Container(
                height: 6.h,
                width: 20.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/upload.png', scale: 5),
                    // Icon(
                    //   Icons.upload_rounded,
                    //   color: Colors.white,
                    // ),
                    1.w.widthBox,
                    Text(
                      'Upload File',
                      style: txtWhiteL,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                // height: 6.h,
                // width: 10.w,
                // color: Colors.black,
              )..centered().pOnly(right: 10, left: 10, bottom: 10),
              2.h.heightBox,
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
