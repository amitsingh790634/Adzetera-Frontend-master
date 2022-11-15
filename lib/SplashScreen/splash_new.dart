import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

import '../SignIn/SigninView/signin_view.dart';

class SplashNew extends StatefulWidget {
  const SplashNew({Key? key}) : super(key: key);

  @override
  State<SplashNew> createState() => _SplashNewState();
}

class _SplashNewState extends State<SplashNew> {
  @override
  void initState() {
    super.initState();

    Timer(
        const Duration(seconds: 10),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => SigninView())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Lottie.asset(
        'assets/images/anime13.json',
        repeat: true,
      ),
    );
  }
}
