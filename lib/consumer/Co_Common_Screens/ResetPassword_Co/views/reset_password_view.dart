import 'package:adzetera_frontend/ResetPassword/views/reset_password_view2.dart';
import 'package:adzetera_frontend/consumer/Co_Common_Screens/ResetPassword_Co/views/reset_password_view2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../../widget/color_text.dart';
import '../controllers/reset_password_controller.dart';

class ResetPasswordCosView extends GetView<ResetPasswordCosController> {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppBar(
                automaticallyImplyLeading: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
                iconTheme: IconThemeData(color: blackbtnClr),
                // title: Text('Help & Support'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Reset Password', style: txtbigBlack),
                  4.h.heightBox,
                  Text('Current Password',
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
                    ),
                  ),
                  2.h.heightBox,
                  Text('New Password',
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
                  2.h.heightBox,
                  Text('Confirm New',
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
                    ),
                  ),
                  2.h.heightBox,

                  2.h.heightBox
                ],
              ).paddingOnly(left: 10, right: 10, bottom: 10),
              InkWell(
                onTap: () => Get.to(RestPasswordCosView2()),
                child: Container(
                  decoration: BoxDecoration(
                    color: bluebtnclr,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Update Password",
                    style: btntxtWhiteL,
                  ).centered().pOnly(top: 2.h, bottom: 2.h),
                ).centered().pOnly(right: 10, left: 10, bottom: 10),
              ),
              1.h.heightBox
            ],
          ),
        ),
      )));
    });
  }
}
