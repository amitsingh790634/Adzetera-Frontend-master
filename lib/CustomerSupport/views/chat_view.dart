import 'package:adzetera_frontend/CustomerSupport/controllers/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widget/color_text.dart';

class ChatView extends GetView<ChatController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Chat', style: apptitle),
        leading: Icon(Icons.arrow_back),
      ),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: bluebtnclr, borderRadius: BorderRadius.circular(20)),
              child: Text(
                'I want a Refund',
                style: txtWhiteL,
              ).paddingAll(10),
            ),
            2.h.heightBox,
            Container(
              decoration: BoxDecoration(
                  color: bluebtnclr, borderRadius: BorderRadius.circular(20)),
              child: Text(
                '''The Delivery time isn't good''',
                style: txtWhiteL,
              ).paddingAll(12),
            ),
            2.h.heightBox,
            Container(
              decoration: BoxDecoration(
                  color: bluebtnclr, borderRadius: BorderRadius.circular(20)),
              child: Text(
                '''The Delivery isn't good''',
                style: txtWhiteL,
              ).paddingAll(10),
            ),
            2.h.heightBox,
            Container(
              decoration: BoxDecoration(
                  color: bluebtnclr, borderRadius: BorderRadius.circular(20)),
              child: Text(
                'Delivery is late',
                style: txtWhiteL,
              ).paddingAll(10),
            ),
            2.h.heightBox,
          ],
        ),
      ),
    );
  }
}
