import 'package:adzetera_frontend/account/account_controller/account_view2_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../widget/color_text.dart';
import '../../edit_profile_co/view/edit_profile.dart';
import '../account_controller/account_view2_controller.dart';

class Account2CosView extends GetView<Account2CosController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                elevation: 0,
                iconTheme: IconThemeData(
                  color: Colors.black, //change your color here
                ),
                backgroundColor: appbg,
                centerTitle: true,
              ),
              Column(
                children: [
                  CircleAvatar(
                      radius: (52),
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset("assets/images/user.png"))),
                  Text("User Name", style: textblack2L),
                  Text("+91 0123456789", style: texthrayL),
                  Text("example@gmail.com", style: texthrayL),
                  InkWell(
                    onTap: () => Get.to(EditCosView()),
                    child: Container(
                            decoration: BoxDecoration(
                                color: bluebtnclr,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Text("Edit Profile", style: txtWhiteL).pOnly(
                                right: 4.h, left: 4.h, top: 1.h, bottom: 1.h))
                        .p(2.h),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Name",
                        style: textblackL,
                      ),
                      SizedBox(
                        width: 25.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "User Name",
                              hintStyle: texthrayL),
                        ),
                      )
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Mobile Number",
                        style: textblackL,
                      ),
                      SizedBox(
                        width: 25.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "+91 0123456789",
                              hintStyle: texthrayL),
                        ),
                      )
                    ],
                  ),

                  // second Row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Email Id",
                        style: textblackL,
                      ),
                      SizedBox(
                        width: 25.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "userid@gmail.com",
                              hintStyle: texthrayL),
                        ),
                      )
                    ],
                  ),

                  // third row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Address",
                        style: textblackL,
                      ),
                      SizedBox(
                        width: 25.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Address',
                              hintStyle: texthrayL),
                        ),
                      )
                    ],
                  ),

                  // 4th row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Gender",
                        style: textblackL,
                      ),
                      SizedBox(
                        width: 25.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Male",
                              hintStyle: texthrayL),
                        ),
                      )
                    ],
                  ),

                  // 5th row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Date of Birth",
                        style: textblackL,
                      ),
                      SizedBox(
                        width: 25.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "8th July,1995",
                              hintStyle: texthrayL),
                        ),
                      )
                    ],
                  ),

                  // 6th row
                ],
              ).pOnly(right: 2.h, left: 2.h),
              5.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
