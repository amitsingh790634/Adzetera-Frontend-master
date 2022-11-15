import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SurveyHomeController extends GetxController {
  Timer? _timer;
  // BuildContext context = BuildContext();

  @override
  void onInit() {
    // Get.snackbar('this', 'that ',duration: Duration(seconds: 5),snackPosition: SnackPosition.);
    // showDialog(
    //     context: context,
    //     builder: (BuildContext context) {
    //       _timer = Timer(Duration(seconds: 5), () {
    //         Navigator.of(context).pop(); // == First dialog closed
    //       });

    //       return AlertDialog(
    //         title: Text('First Dialog'),
    //         content: SingleChildScrollView(
    //           child: Text('Content'),
    //         ),
    //       );
    //     }).then((val) {
    //   if (_timer!.isActive) {
    //     _timer!.cancel();
    //   }
    // }).then((value) {
    //   showDialog(
    //     // == Second dialog open
    //     context: context,
    //     builder: (BuildContext context) {
    //       return AlertDialog(
    //         content: Column(
    //           mainAxisSize: MainAxisSize.min,
    //           children: [
    //             Center(child: CircularProgressIndicator()),
    //             Text('Second Dialog')
    //           ],
    //         ),
    //       );
    //     },
    //   );
    // });
    // TODO: implement onInit
    super.onInit();
  }
}
