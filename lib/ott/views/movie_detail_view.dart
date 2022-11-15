import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widget/color_text.dart';

class MovieDetailView extends StatefulWidget {
  const MovieDetailView({Key? key}) : super(key: key);

  @override
  State<MovieDetailView> createState() => _MovieDetailViewState();
}

class _MovieDetailViewState extends State<MovieDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 200.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/moviebg.png'))),
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    top: 150.0,
                    left: 30,
                    // right: 50,
                    child: Container(
                      height: 190.0,
                      width: 130.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/movietran.png'),
                        ),
                      ),
                      // border: Border.all(color: Colors.white, width: 6.0)),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.add_outlined,
                      size: 30,
                    ),
                    Text('My List')
                  ],
                ).paddingOnly(
                  right: 20,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.thumb_up,
                      size: 30,
                    ),
                    Text('Like')
                  ],
                ).paddingOnly(right: 20),
                Column(
                  children: [
                    Icon(
                      Icons.reply_all,
                      size: 30,
                    ),
                    Text('Share')
                  ],
                )
                // .paddingOnly(right: 10)
                // .paddingOnly(right: 20),
              ],
            ).paddingAll(40),
            4.h.heightBox,
            Container(
              decoration: BoxDecoration(
                color: bluebtnclr,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon(Icons.play)
                  Icon(Icons.play_circle_outline_outlined, color: Colors.white),
                  Text(
                    "Play",
                    style: btntxtWhiteL,
                  ).centered().pOnly(top: 2.h, bottom: 2.h, left: 1.h),
                ],
              ),
            ).centered().pOnly(right: 10, left: 10, bottom: 10),
            Container(
              child: Text(
                  'Transformers is a series of American science fiction action '
                  'films based on the Transformers franchise, which began in the 1980s. '),
            ).paddingAll(10),
            Row(
              // mainAxisAlignment: MainAxisAlignment.,
              children: [
                3.w.widthBox,
                CircleAvatar(
                  child: Image.asset('assets/images/user.png'),
                ),
                3.w.widthBox,
                CircleAvatar(
                  child: Image.asset('assets/images/user.png'),
                ),
                3.w.widthBox,
                CircleAvatar(
                  child: Image.asset('assets/images/user.png'),
                ),
                3.w.widthBox,
                CircleAvatar(
                  child: Image.asset('assets/images/user.png'),
                )
              ],
            ),
            2.h.heightBox,
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Trailers & more',
                  style: textblack2L,
                ).paddingOnly(left: 10),
                Container(
                  height: 5,
                  width: 32.w,
                  color: bluebtnclr,
                ).paddingOnly(left: 10),
                Container(
                  height: 2,
                  color: Colors.black,
                  // thickness: 2,
                ),
                Container(
                    width: double.maxFinite,
                    child: Image.asset(
                      'assets/images/moviedino.png',
                      // fit: BoxFit.cover,
                    ))
              ],
            )
          ],
        ),
      )),
    );
  }
}
