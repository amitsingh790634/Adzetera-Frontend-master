import 'package:adzetera_frontend/account/account_controller/account_view2_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widget/color_text.dart';

class Account2View extends GetView<Account2Controller> {
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
                  Container(
                    decoration: BoxDecoration(
                      color: bluebtnclr,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Text("Edit Profile", style: txtWhiteL)
                        .pOnly(right: 4.h, left: 4.h, top: 1.h, bottom: 1.h),
                  ).p(2.h),
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

                  // second Row

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

                  // third row

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

                  // 4th row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Registered Company Name",
                        style: textblackL,
                      ),
                      SizedBox(
                        width: 25.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Company name",
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
                        "GST Number",
                        style: textblackL,
                      ),
                      SizedBox(
                        width: 25.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "JKDFI95482JHML",
                              hintStyle: texthrayL),
                        ),
                      )
                    ],
                  ),

                  // 6th row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "PAN Number",
                        style: textblackL,
                      ),
                      SizedBox(
                        width: 25.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "jdfy67324uh",
                              hintStyle: texthrayL),
                        ),
                      )
                    ],
                  ),

                  // 7th row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Registered Company Address",
                        style: textblackL,
                      ),
                      SizedBox(
                        width: 25.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Address",
                              hintStyle: texthrayL),
                        ),
                      )
                    ],
                  ),

                  // 8th row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "State",
                        style: textblackL,
                      ),
                      SizedBox(
                        width: 25.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "New Delhi",
                              hintStyle: texthrayL),
                        ),
                      )
                    ],
                  ),
                  // 9th row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Pincode",
                        style: textblackL,
                      ),
                      SizedBox(
                        width: 25.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "110091",
                              hintStyle: texthrayL),
                        ),
                      )
                    ],
                  ),

                  // 10th row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Industry",
                        style: textblackL,
                      ),
                      9.w.widthBox,
                      SizedBox(
                        width: 25.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Industry name",
                              hintStyle: texthrayL),
                        ),
                      )
                    ],
                  ),

                  // 11th row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Concerned Person Name",
                        style: textblackL,
                      ),
                      9.w.widthBox,
                      SizedBox(
                        width: 25.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Name",
                              hintStyle: texthrayL),
                        ),
                      )
                    ],
                  ),
                  // 12th row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Branch",
                        style: textblackL,
                      ),
                      9.w.widthBox,
                      SizedBox(
                        width: 25.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Branch name",
                              hintStyle: texthrayL),
                        ),
                      )
                    ],
                  ),
                  // 13th row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Designation",
                        style: textblackL,
                      ),
                      9.w.widthBox,
                      SizedBox(
                        width: 25.w,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Designation",
                              hintStyle: texthrayL),
                        ),
                      )
                    ],
                  ),
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
