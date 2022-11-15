import 'package:adzetera_frontend/CreateAccount/CreateAccountController/create_account_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consumer/OtpCo/views/otp_co_view.dart';
import '../../widget/color_text.dart';

class CreateAccount2View extends GetView<CreateAccountController> {
  CreateAccountController _accountController =
      Get.put(CreateAccountController());
  var checkBoxValue = true;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Scaffold(
          backgroundColor: Colors.white,
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
                    leading: Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.black,
                    ).onTap(() {
                      Get.back();
                    }),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                  2.h.heightBox,
                  // Container(
                  //   height: 20.h,
                  //   width: 60.w,
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //         image: AssetImage('assets/images/splash.png'),
                  //         fit: BoxFit.cover),
                  //   ),
                  // ),
                  // 1.h.heightBox,
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
                              text: 'Concerned Person Name',
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
                      // 1.h.heightBox,
                      // Text.rich(TextSpan(
                      //   children: [
                      //     TextSpan(
                      //         text: 'Concerned Person Name',
                      //         style: TextStyle(
                      //             fontSize: 14,
                      //             fontWeight: FontWeight.normal,
                      //             color: whiteclr)),
                      //     TextSpan(
                      //       text: '*',
                      //       style: TextStyle(
                      //           fontWeight: FontWeight.normal,
                      //           fontSize: 20,
                      //           color: bluebtnclr),
                      //     ),
                      //   ],
                      // )),

                      // // 1.h.heightBox,
                      // TextFormField(
                      //   keyboardType: TextInputType.text,
                      //   decoration: const InputDecoration(
                      //     fillColor: whitebtnclr,
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
                      1.h.heightBox,
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'Branch',
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
                      // Text.rich(TextSpan(
                      //   children: [
                      //     TextSpan(
                      //         text: 'Account Type',
                      //         style: TextStyle(
                      //             fontSize: 14,
                      //             fontWeight: FontWeight.normal,
                      //             color: whitebtnclr)),
                      //     TextSpan(
                      //       text: '*',
                      //       style: TextStyle(
                      //           fontWeight: FontWeight.normal,
                      //           fontSize: 20,
                      //           color: bluebtnclr),
                      //     ),
                      //   ],
                      // )),
                      // // 1.h.heightBox,
                      // TextFormField(
                      //   keyboardType: TextInputType.text,
                      //   obscureText: true,
                      //   decoration: const InputDecoration(
                      //     fillColor: whitebtnclr,
                      //     filled: true,
                      //     // suffixIcon: Icon(Icons.visibility),
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
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'Designation',
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
                      // 1.h.heightBox,
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Text(
                      //       'Upload PAN CARD',
                      //       style: txtWhiteL,
                      //     ),
                      //     // 10.w.widthBox,
                      //     Container(
                      //       height: 5.h,
                      //       width: 30.w,
                      //       decoration: BoxDecoration(
                      //           color: bluebtnclr,
                      //           borderRadius: BorderRadius.circular(10)),
                      //       child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         children: [
                      //           Text(
                      //             'Upload',
                      //             style: TextStyle(
                      //                 color: whitebtnclr,
                      //                 fontSize: 20,
                      //                 fontWeight: FontWeight.w600),
                      //           ).centered(),
                      //           Icon(
                      //             Icons.upload,
                      //             color: Colors.white,
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      1.h.heightBox,
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'Mobile Number',
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
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'Email Id',
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
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Text(
                      //       'Upload GST Certificate',
                      //       style: txtWhiteL,
                      //     ),
                      //     // 10.w.widthBox,
                      //     Container(
                      //       height: 5.h,
                      //       width: 30.w,
                      //       decoration: BoxDecoration(
                      //           color: bluebtnclr,
                      //           borderRadius: BorderRadius.circular(10)),
                      //       child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         children: [
                      //           Text(
                      //             'Upload',
                      //             style: TextStyle(
                      //                 color: whitebtnclr,
                      //                 fontSize: 20,
                      //                 fontWeight: FontWeight.w600),
                      //           ).centered(),
                      //           Icon(
                      //             Icons.upload,
                      //             color: Colors.white,
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // 1.h.heightBox,
                      // Text.rich(TextSpan(
                      //   children: [
                      //     TextSpan(
                      //         text: 'Registered Company Address',
                      //         style: TextStyle(
                      //             fontSize: 14,
                      //             fontWeight: FontWeight.normal,
                      //             color: whitebtnclr)),
                      //     TextSpan(
                      //       text: '*',
                      //       style: TextStyle(
                      //           fontWeight: FontWeight.normal,
                      //           fontSize: 20,
                      //           color: bluebtnclr),
                      //     ),
                      //   ],
                      // )),
                      // TextFormField(
                      //   keyboardType: TextInputType.streetAddress,
                      //   decoration: const InputDecoration(
                      //     fillColor: whitebtnclr,
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
                              text: 'Company Profile/Description',
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
                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
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
                      Row(
                        children: [
                          Checkbox(
                            value: checkBoxValue,
                            activeColor: Colors.blue,
                            onChanged: (bool) {
                              !checkBoxValue;
                              // Text('Remember me');
                              // setState(() {
                              //   checkBoxValue = newValue;
                              // });
                            },
                          ),
                          Text(
                            'Terms and Conditions',
                            style: txtblues,
                          )
                        ],
                      ),
                    ],
                  ).paddingOnly(left: 10, right: 10, bottom: 10),
                  InkWell(
                    onTap: () => Get.to(
                      OtpCoView(),
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
                        "Submit ",
                        // as Consumer",
                        style: btntxtWhiteL,
                      ).centered().pOnly(top: 2.h, bottom: 2.h),
                    ).centered().pOnly(right: 10, left: 10),
                  ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: bluebtnclr,
                  //     borderRadius: BorderRadius.all(
                  //       Radius.circular(20),
                  //     ),
                  //   ),
                  //   child: Text(
                  //     "Submit",
                  //     style: btntxtWhiteL,
                  //   ).centered().pOnly(top: 2.h, bottom: 2.h),
                  // ).centered().pOnly(right: 10, left: 10, bottom: 10).onTap(() {
                  //   Get.to(OtpCoView(),
                  //       transition: Transition.circularReveal,
                  //       duration: Duration(seconds: 1));
                  // }),
                  1.h.heightBox
                ],
              ),
            ),
          )));
    });
  }
}
