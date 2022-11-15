import 'package:adzetera_frontend/widget/color_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileCoView extends StatefulWidget {
  const ProfileCoView({Key? key}) : super(key: key);

  @override
  State<ProfileCoView> createState() => _ProfileCoViewState();
}

class _ProfileCoViewState extends State<ProfileCoView> {
  @override
  Widget build(BuildContext cx) {
    return Scaffold(
      // appBar: null,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
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
                                      AssetImage('assets/images/backpic.png'))),
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    top: 90.0,
                    child: Container(
                      height: 190.0,
                      width: 190.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/fbpro.png'),
                          ),
                          border: Border.all(color: Colors.white, width: 6.0)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 130.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Elle Hex',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ],
              ),
            ),
            1.h.heightBox,
            // SizedBox(
            //   height: 12.0,
            // ),
            Container(
                child: Text(
              'Toronto, Canada',
              style: TextStyle(fontSize: 18.0),
            )),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: bluefbclr,
                  ),
                  child: Row(children: [
                    Icon(
                      Icons.person_add_outlined,
                      color: whiteclr,
                    ),
                    Text(
                      'Add Friend',
                      style: txtWhite,
                    )
                  ]).paddingAll(5),
                ),
                1.w.widthBox,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: bluefbclr,
                  ),
                  child: Icon(
                    Icons.call_outlined,
                    color: whiteclr,
                  ).paddingAll(5),
                ),
                1.w.widthBox,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: bluefbclr,
                  ),
                  child: Icon(
                    Icons.messenger_outline,
                    color: whiteclr,
                  ).paddingAll(5),
                ),
                1.w.widthBox,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: bluefbclr,
                  ),
                  child: Icon(
                    Icons.videocam_outlined,
                    color: whiteclr,
                  ).paddingAll(5),
                )
              ],
            ),
            // SizedBox(
            //   height: 10.0,
            // ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.photo_outlined, color: Colors.black),
                        onPressed: () {},
                      ),
                      Text(
                        'Photos',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.music_note_outlined,
                            color: Colors.black),
                        onPressed: () {},
                      ),
                      Text(
                        'Music',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.ondemand_video, color: Colors.black),
                        onPressed: () {
                          // _showMoreOption(cx);
                        },
                      ),
                      Text(
                        'Videos',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.gamepad, color: Colors.black),
                        onPressed: () {
                          // _showMoreOption(cx);
                        },
                      ),
                      Text(
                        'Games',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.group_outlined, color: Colors.black),
                        onPressed: () {
                          // _showMoreOption(cx);
                        },
                      ),
                      Text(
                        'Groups',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ).paddingOnly(left: 10, right: 10)
                ],
              ),
            ),
            2.h.heightBox,
            // SizedBox(
            //   height: 10.0,
            // ),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.person_outline),
                      0.7.w.widthBox,
                      Text(
                        '404 Friends - 77 mutual',
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                  1.h.heightBox,
                  Row(
                    children: <Widget>[
                      Icon(Icons.blur_circular_outlined),
                      0.7.w.widthBox,
                      Text(
                        '100 Followers',
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                  1.h.heightBox,
                  Row(
                    children: <Widget>[
                      Icon(Icons.more_horiz_outlined),
                      0.7.w.widthBox,
                      Text(
                        'More about Hex',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      // SizedBox(
                      //   width: 5.0,
                      // ),
                    ],
                  ),
                  2.h.heightBox
                ],
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/rose.png',
                  scale: 3.5,
                ),
                Container(
                  height: 4.5.h,
                  width: 80.w,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      // suffix: Icon(
                      //   Icons.photo_library,
                      // ),
                      suffixIcon: Container(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                print('add button pressed');
                              },
                              icon: Icon(Icons.photo_library_outlined),
                            ),
                            IconButton(
                              onPressed: () {
                                print('mic button pressed');
                              },
                              icon: Icon(Icons.more_vert_outlined),
                              // focusColor: ,
                              // disabledColor: ,
                            ),
                          ],
                        ),
                      ),
                      //     Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   // crossAxisAlignment: CrossAxisAlignment.end,
                      //   children: [
                      //     Icon(Icons.more_vert_outlined),
                      //     Icon(Icons.photo_library)
                      //   ],
                      // ),
                      //Icon(Icons.abc),
                      hintText: 'Write Something here...',
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                      // border: BorderRadius.all(radius),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff4DC0C9),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide:
                            BorderSide(color: Color(0xffA5ABB3), width: 0.5),
                      ),
                    ),
                  ),
                ),
              ],
            ).paddingOnly(left: 10, right: 10, bottom: 10),
            ListView.separated(
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                thickness: 4,
                height: 20,
              ),
              itemCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // 1.w.widthBox,
                            Image.asset(
                              'assets/images/rose.png',
                              scale: 3,
                            ),
                            2.w.widthBox,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Rosy Rose'),
                                // 1.h.heightBox,
                                Row(
                                  children: [
                                    Text('16 Feb at 19:56 '),
                                    Icon(
                                      Icons.blur_circular_sharp,
                                      size: 15,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                    1.h.heightBox,
                    Text(
                        'Hello guys! Today, I want to share my design for a Facebook app.'
                        ' Check my profile for more works.\n Thank you!'),
                    1.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.visibility_outlined),
                            Text('19')
                          ],
                        ),
                        Row(
                          children: [Text('👍❤😁😮😥😡 7')],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.reply_outlined,
                              textDirection: TextDirection.rtl,
                            ),
                            Text('4'),
                            Icon(Icons.comment_outlined),
                            Text('3')
                          ],
                        )
                      ],
                    )
                  ],
                );
              }),
            ).paddingOnly(left: 10, right: 10, top: 10, bottom: 10)
          ],
        ),
      ),
    );
  }

  // _showMoreOption(cx) {
  //   showModalBottomSheet(
  //     context: cx,
  //     builder: (BuildContext bcx) {
  //       return new Column(
  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         children: <Widget>[
  //           Container(
  //             padding: EdgeInsets.all(10.0),
  //             child: Row(
  //               children: <Widget>[
  //                 Icon(
  //                   Icons.feedback,
  //                   color: Colors.black,
  //                 ),
  //                 SizedBox(
  //                   width: 10.0,
  //                 ),
  //                 Text(
  //                   'Give feedback or report this profile',
  //                   style: TextStyle(fontSize: 18.0),
  //                 )
  //               ],
  //             ),
  //           ),
  //           Container(
  //             padding: EdgeInsets.all(10.0),
  //             child: Row(
  //               children: <Widget>[
  //                 Icon(
  //                   Icons.block,
  //                   color: Colors.black,
  //                 ),
  //                 SizedBox(
  //                   width: 10.0,
  //                 ),
  //                 Text(
  //                   'Block',
  //                   style: TextStyle(fontSize: 18.0),
  //                 )
  //               ],
  //             ),
  //           ),
  //           Container(
  //             padding: EdgeInsets.all(10.0),
  //             child: Row(
  //               children: <Widget>[
  //                 Icon(
  //                   Icons.link,
  //                   color: Colors.black,
  //                 ),
  //                 SizedBox(
  //                   width: 10.0,
  //                 ),
  //                 Text(
  //                   'Copy link to profile',
  //                   style: TextStyle(fontSize: 18.0),
  //                 )
  //               ],
  //             ),
  //           ),
  //           Container(
  //             padding: EdgeInsets.all(10.0),
  //             child: Row(
  //               children: <Widget>[
  //                 Icon(
  //                   Icons.search,
  //                   color: Colors.black,
  //                 ),
  //                 SizedBox(
  //                   width: 10.0,
  //                 ),
  //                 Text(
  //                   'Search Profile',
  //                   style: TextStyle(fontSize: 18.0),
  //                 )
  //               ],
  //             ),
  //           )
  //         ],
  //       );
  //     },
  //   );
  // }
}
