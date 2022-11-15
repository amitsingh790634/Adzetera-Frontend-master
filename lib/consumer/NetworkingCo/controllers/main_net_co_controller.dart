import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainNetCoController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final TrackingScrollController scrollController = TrackingScrollController();
  // AnimationController tabcontroller = AnimationController(vsync: this)
  late TabController tabcontroller;

  @override
  void onInit() {
    // final duration = const Duration(seconds: 2);
    tabcontroller = TabController(length: 5, vsync: this);
    // AnimationController.unbounded(duration: duration, vsync: this)
    //     as TabController;
    //  controller.repeat();
    //  controller.addListener(() =>
    //      print("Animation Controller value: ${controller.value}"));
  }
}
