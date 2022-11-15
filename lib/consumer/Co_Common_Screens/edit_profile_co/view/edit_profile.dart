import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../../widget/color_text.dart';
import '../../account_co/account_view/account_view2.dart';
import '../edit_profile_controller/edit_profile_controller.dart';

class EditCosView extends GetView<EditCosViewController> {
  const EditCosView({Key? key}) : super(key: key);

  // var checkBoxValue = true;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Scaffold(
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBar(
                    automaticallyImplyLeading: false,
                    toolbarHeight: 13.h,
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    title: Center(
                        child: CircleAvatar(
                            maxRadius: 6.h,
                            child: Image.asset('assets/images/user.png'))),
                  ),
                  1.h.heightBox,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'Name',
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
                        ),
                      ),
                      1.h.heightBox,
                      const Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'Mobile Number',
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
                      // 1.h.heightBox,
                      TextFormField(
                        keyboardType: TextInputType.number,
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
                      const Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'Email Id',
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
                      // 1.h.heightBox,
                      TextFormField(
                        keyboardType: TextInputType.number,
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
                      const Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'Address',
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
                      TextFormField(
                        keyboardType: TextInputType.number,
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
                      const Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'City',
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
                      TextFormField(
                        keyboardType: TextInputType.number,
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
                      const Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'Pincode',
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
                      TextFormField(
                        keyboardType: TextInputType.number,
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
                      const Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'State',
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
                      TextFormField(
                        keyboardType: TextInputType.number,
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
                      const Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'Gender',
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
                      TextFormField(
                        keyboardType: TextInputType.number,
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
                      const Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: 'Date of Birth',
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
                      TextFormField(
                        keyboardType: TextInputType.number,
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
                    ],
                  ).paddingOnly(left: 10, right: 10, bottom: 10),
                  InkWell(
                    onTap: () {
                      Get.to(() => Account2CosView());
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: bluebtnclr,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Submit",
                        style: btntxtWhiteL,
                      ).centered().pOnly(top: 2.h, bottom: 2.h),
                    ).centered().pOnly(right: 10, left: 10, bottom: 10),
                  ),
                  1.h.heightBox
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
