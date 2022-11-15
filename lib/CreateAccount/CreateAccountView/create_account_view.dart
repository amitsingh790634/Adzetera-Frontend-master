import 'package:adzetera_frontend/CreateAccount/CreateAccountController/create_account_controller.dart';
import 'package:adzetera_frontend/CreateAccount/CreateAccountView/create_account2_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widget/color_text.dart';

class CreateAccountView extends GetView<CreateAccountController> {
  var checkBoxValue = true;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: Icon(
              Icons.arrow_back_sharp,
              color: Colors.black,
            ).onTap(() {
              Get.back();
            }),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),

          // appBar: AppBar(leading: Icon(Icons.arrow_back_sharp)),
          body: SingleChildScrollView(
              child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // AppBar(leading: Icon(Icons.arrow_back_sharp)),
                  Container(
                    height: 50.h,
                    // width: 90.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/newlogo.png'),
                            fit: BoxFit.cover)),
                  ).centered(),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'Create Account as ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        TextSpan(
                          text: 'Advertiser',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xff0060B9)),
                        ),
                      ],
                    ),
                  ).paddingOnly(left: 10),
                  1.h.heightBox,
                  // SizedBox(
                  //   height: 20,
                  // ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'Registered Company Name',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: bluebtnclr)),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                                color: Color(0xff145da0)),
                          ),
                        ],
                      )),
                      // 1.h.heightBox,
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: tealclr,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA5ABB3), width: 0.5),
                          ),
                        ),
                      ),
                      1.h.heightBox,
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'GST Number',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: bluebtnclr)),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                                color: bluebtnclr),
                          ),
                        ],
                      )),
                      // 1.h.heightBox,
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          fillColor: whitebtnclr,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: tealclr,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA5ABB3), width: 0.5),
                          ),
                        ),
                      ),
                      1.h.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Upload GST Certificate',
                            style: txtblues,
                          ),
                          // 10.w.widthBox,
                          Container(
                            height: 5.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                                color: bluebtnclr,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Upload',
                                  style: TextStyle(
                                      color: whitebtnclr,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ).centered(),
                                Icon(
                                  Icons.upload,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'PAN Number',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: bluebtnclr)),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                                color: bluebtnclr),
                          ),
                        ],
                      )),
                      // 1.h.heightBox,
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          fillColor: whitebtnclr,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: tealclr,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA5ABB3), width: 0.5),
                          ),
                        ),
                      ),
                      1.h.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Upload PAN CARD',
                            style: txtblues,
                          ),
                          // 10.w.widthBox,
                          Container(
                            height: 5.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                                color: bluebtnclr,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Upload',
                                  style: TextStyle(
                                      color: whitebtnclr,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ).centered(),
                                Icon(
                                  Icons.upload,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      1.h.heightBox,
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'Address',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: bluebtnclr)),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                                color: Color(0xff145da0)),
                          ),
                        ],
                      )),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: tealclr,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA5ABB3), width: 0.5),
                          ),
                        ),
                      ),
                      1.h.heightBox,
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'City',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: bluebtnclr)),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                                color: Color(0xff145da0)),
                          ),
                        ],
                      )),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: tealclr,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA5ABB3), width: 0.5),
                          ),
                        ),
                      ),
                      1.h.heightBox,
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'State',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: bluebtnclr)),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                                color: Color(0xff145da0)),
                          ),
                        ],
                      )),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: tealclr,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA5ABB3), width: 0.5),
                          ),
                        ),
                      ),
                      1.h.heightBox,
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'Pincode',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: bluebtnclr)),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                                color: Color(0xff145da0)),
                          ),
                        ],
                      )),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: tealclr,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA5ABB3), width: 0.5),
                          ),
                        ),
                      ),
                      1.h.heightBox,
                      // Text.rich(TextSpan(
                      //   children: [
                      //     TextSpan(
                      //         text: 'Gender',
                      //         style: TextStyle(
                      //             fontSize: 14,
                      //             fontWeight: FontWeight.normal,
                      //             color: Colors.white)),
                      //     TextSpan(
                      //       text: '*',
                      //       style: TextStyle(
                      //           fontWeight: FontWeight.normal,
                      //           fontSize: 20,
                      //           color: Color(0xff145da0)),
                      //     ),
                      //   ],
                      // )),
                      // TextFormField(
                      //   keyboardType: TextInputType.number,
                      //   decoration: const InputDecoration(
                      //     fillColor: Colors.white,
                      //     filled: true,
                      //     enabledBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(
                      //         color: Color(0xff4DC0C9),
                      //       ),
                      //     ),
                      //     focusedBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(
                      //           color: Color(0xffA5ABB3), width: 0.5),
                      //     ),
                      //   ),
                      // ),
                      // 1.h.heightBox,
                      // Text.rich(TextSpan(
                      //   children: [
                      //     TextSpan(
                      //         text: 'Date of Birth',
                      //         style: TextStyle(
                      //             fontSize: 14,
                      //             fontWeight: FontWeight.normal,
                      //             color: Colors.white)),
                      //     TextSpan(
                      //       text: '*',
                      //       style: TextStyle(
                      //           fontWeight: FontWeight.normal,
                      //           fontSize: 20,
                      //           color: Color(0xff145da0)),
                      //     ),
                      //   ],
                      // )),
                      // TextFormField(
                      //   keyboardType: TextInputType.number,
                      //   decoration: const InputDecoration(
                      //     fillColor: Colors.white,
                      //     filled: true,
                      //     enabledBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(
                      //         color: Color(0xff4DC0C9),
                      //       ),
                      //     ),
                      //     focusedBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(
                      //           color: Color(0xffA5ABB3), width: 0.5),
                      //     ),
                      //   ),
                      // ),
                      // 1.h.heightBox,
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'Bussiness/Industry',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: bluebtnclr)),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                                color: Color(0xff145da0)),
                          ),
                        ],
                      )),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: tealclr,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA5ABB3), width: 0.5),
                          ),
                        ),
                      ),
                      1.h.heightBox,
                    ],
                  ).paddingOnly(left: 10, right: 10, bottom: 10),
                  InkWell(
                    onTap: () => Get.to(
                      CreateAccount2View(),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff00a8ad),
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 30)
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Text(
                        "Next ",
                        // as Consumer",
                        style: btntxtWhiteL,
                      ).centered().pOnly(top: 2.h, bottom: 2.h),
                    ).centered().pOnly(right: 10, left: 10),
                  ),
                  // InkWell(
                  //     child: Container(
                  //   decoration: BoxDecoration(
                  //     color: bluebtnclr,
                  //     borderRadius: BorderRadius.all(
                  //       Radius.circular(20),
                  //     ),
                  //   ),
                  //   child: Text(
                  //     "Next",
                  //     style: btntxtWhiteL,
                  //   ).centered().pOnly(top: 2.h, bottom: 2.h),
                  // ).centered().pOnly(right: 10, left: 10, bottom: 10).onTap(() {
                  //   Get.to(CreateAccount2View());
                  // })
                  //     // onTap: Get.to(CreateAccount2View()) ,
                  //     ),
                  1.h.heightBox
                ],
              ),
            ),
          )));
    });
  }
}
