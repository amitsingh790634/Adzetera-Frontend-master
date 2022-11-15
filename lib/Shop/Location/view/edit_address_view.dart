import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../MyCart/views/my_cart_view.dart';
import '../../../widget/color_text.dart';
import '../location_controller/edit_address_controller.dart';
import '../location_controller/location_controller2.dart';
import 'location_view1.dart';

class EditAddressView extends GetView<EditAddressController> {
  EditAddressController controller = Get.put(EditAddressController());
  EditAddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: appbg,
          elevation: 0,
          iconTheme: IconThemeData(color: blackbtnClr),
          title: Text('Confirm location', style: apptitle),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/editadd.png'),
                ],
              ),
              2.h.heightBox,
              Text('Select your delivery location', style: textblack3L)
                  .pOnly(right: 2.w, left: 2.w),
              2.h.heightBox,
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 90.w,
                height: 5.h,
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Full Address',
                    hintStyle: txtbig3Black,
                    prefixIcon: Icon(
                      Icons.location_on,
                      color: blackbtnClr,
                    ),
                    suffixIcon: InkWell(
                      onTap: () => Get.to(LocationView1()),
                      child: Container(
                        decoration: BoxDecoration(
                          color: whitebtnclr,
                          border: Border.all(color: line2clr, width: .5.w),
                        ),
                        child: Text(
                          'Change',
                          textAlign: TextAlign.center,
                          style: txtRedL,
                        ).pOnly(
                            right: 4.w, left: 4.w, top: 0.5.h, bottom: 0.5.h),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _modal1BottomSheetMenu(context: context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: bluebtnclr),
                  //  padding: const EdgeInsets.all(15),
                  child:
                      Text("Confirm location and proceed", style: btntxtWhiteL)
                          .centered()
                          .pOnly(top: 1.5.h, bottom: 1.5.h),
                ).paddingAll(2.h),
              ),
              2.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }

  void _modal1BottomSheetMenu({required BuildContext context}) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            // color: Colors.transparent, //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          // border: InputBorder.none,
                          // focusedBorder: InputBorder.none,
                          // enabledBorder: InputBorder.none,
                          // errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: 'Enter Address Details',
                          hintStyle: textblack2L,
                          suffixIcon: Icon(Icons.cancel, color: blackbtnClr)),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          // border: InputBorder.none,
                          // focusedBorder: InputBorder.none,
                          // enabledBorder: InputBorder.none,
                          // errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: 'Full Address',
                          hintStyle: textblack2L,
                          prefixIcon: Icon(
                            Icons.location_on,
                            color: blackbtnClr,
                          ),
                          suffixIcon: Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: line2clr, width: .5.w),
                              ),
                              child: Text(
                                'Change',
                                textAlign: TextAlign.center,
                                style: txtblues,
                              ).pOnly(
                                  right: 4.w,
                                  left: 4.w,
                                  bottom: 2.h,
                                  top: 2.h))),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                        // focusedBorder: InputBorder.none,
                        // enabledBorder: InputBorder.none,
                        // errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'House no. / Flat no. / Floor / Tower',
                        hintStyle: texthrayL,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                        // focusedBorder: InputBorder.none,
                        // enabledBorder: InputBorder.none,
                        // errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'street / socity / landmark',
                        hintStyle: texthrayL,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                        // focusedBorder: InputBorder.none,
                        // enabledBorder: InputBorder.none,
                        // errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Recipient’s name',
                        hintStyle: texthrayL,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                        // focusedBorder: InputBorder.none,
                        // enabledBorder: InputBorder.none,
                        // errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'recipient’s phone number (optional)',
                        hintStyle: texthrayL,
                      ),
                    ),
                    Text('Nick name of your address', style: texthrayL),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: green2Clr),
                          //  padding: const EdgeInsets.all(15),
                          child:
                              Text("Home", style: btntxtWhiteL).paddingAll(2.w),
                        ).paddingAll(2.h),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: green2Clr),
                          //  padding: const EdgeInsets.all(15),
                          child: Text("Office", style: btntxtWhiteL)
                              .paddingAll(2.w),
                        ).paddingAll(2.h),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: green2Clr),
                          //  padding: const EdgeInsets.all(15),
                          child: Text("Other", style: btntxtWhiteL)
                              .paddingAll(2.w),
                        ).paddingAll(2.h),
                      ],
                    ),
                    InkWell(
                      onTap: () => Get.to(MyCartView()),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: bluebtnclr),
                        child: Text("Save address and proceed",
                                style: btntxtWhiteL)
                            .centered()
                            .pOnly(top: 1.5.h, bottom: 1.5.h),
                      ),
                    ),
                  ],
                )).paddingAll(2.w),
          );
        });
  }
}
