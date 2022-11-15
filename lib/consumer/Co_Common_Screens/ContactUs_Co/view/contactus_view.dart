import 'package:adzetera_frontend/account/account_controller/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../../widget/color_text.dart';
import '../contacts_us_controller/contact_controller.dart';

class ContactCosView extends GetView<ContactCosController> {
  const ContactCosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Image.asset("assets/icons/back.png", scale: 4).onTap(() {
            Get.back();
          }),
          title: Text("Contact Us", style: textblack2L),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/icons/company.png', scale: 4),
                      2.h.widthBox,
                      Text("Company Name", style: txtbig3Black)
                    ],
                  ),
                  2.h.heightBox,
                  Container(
                    height: 0.2.h,
                    width: 90.w,
                    color: lineclr,
                  ).centered(),
                  2.h.heightBox,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/icons/mail.png', scale: 4),
                      2.h.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email", style: btntxtblackL),
                          Text("Campany@gmail.com", style: txtbig3Black),
                        ],
                      )
                    ],
                  ),
                  2.h.heightBox,
                  Container(
                    height: 0.2.h,
                    width: 90.w,
                    color: lineclr,
                  ).centered(),
                  2.h.heightBox,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/icons/contact.png', scale: 4),
                      2.h.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Contact no.", style: btntxtblackL),
                          Text("+91 123456789", style: txtbig3Black),
                        ],
                      )
                    ],
                  ),
                  2.h.heightBox,
                  Container(
                    height: 0.2.h,
                    width: 90.w,
                    color: lineclr,
                  ).centered(),
                  2.h.heightBox,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/icons/address.png', scale: 4),
                      2.h.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Address", style: btntxtblackL),
                          Text(
                              "Location, Mayur vihar, phase 1,\nNew Delhi.\nPincode-110049",
                              style: txtbig3Black),
                        ],
                      )
                    ],
                  ),
                  3.h.heightBox,
                ],
              ).pOnly(right: 2.h, left: 2.h),
              Container(
                height: MediaQuery.of(context).size.height,
                child: Image.asset('assets/images/map.png', fit: BoxFit.fill),
              )
            ],
          ),
        ),
      ),
    );
  }
}
