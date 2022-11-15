import 'package:adzetera_frontend/consumer/NetworkingCo/controllers/home_controller_net.dart';
import 'package:adzetera_frontend/widget/color_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeViewNet extends StatefulWidget {
  const HomeViewNet({Key? key}) : super(key: key);

  @override
  State<HomeViewNet> createState() => _HomeViewNetState();
}

class _HomeViewNetState extends State<HomeViewNet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: tealclr,
      body: Container(
          child: Column(
        children: [
          // 2.h.heightBox,
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 4.5.h,
                  width: 80.w,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
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
                Icon(
                  Icons.photo_library,
                  color: tealclr,
                  size: 27,
                )
              ],
            ),
          ).pOnly(top: 10),
          2.h.heightBox,
          Expanded(
            flex: 1,
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              shrinkWrap: true,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset('assets/images/car.png'),
                    Row(
                      children: [
                        Spacer(),
                        Text(
                          'INR-200',
                          style: TextStyle(fontSize: 15),
                        ),
                        2.w.widthBox,
                        Icon(Icons.thumb_up),
                      ],
                    ).paddingOnly(right: 10)
                  ],
                ),

                Divider(
                  thickness: 1.h,
                  color: line2clr,
                ),
                Column(
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
                            1.w.widthBox,
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
                    Align(
                      child: Text('''I'm not lazy, just chill'''),
                      alignment: Alignment.centerLeft,
                    ),
                    1.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Row(
                        //   children: [
                        //     Icon(Icons.visibility_outlined),
                        //     Text('19')
                        //   ],
                        // ),
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
                            2.w.widthBox,
                            Icon(Icons.comment_outlined),
                            Text('3'),
                            2.w.widthBox,
                            Icon(Icons.visibility_outlined),
                            Text('19')
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  thickness: 1.h,
                  color: line2clr,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                            1.w.widthBox,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Rosy Rose'),
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
                    Text('Vacation!!!'),
                    1.h.heightBox,
                    Image.asset(
                      'assets/images/beech.jpg',
                      width: double.maxFinite,
                    ),
                    1.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                            2.w.widthBox,
                            Icon(Icons.comment_outlined),
                            Text('3'),
                            2.w.widthBox,
                            Icon(Icons.visibility_outlined),
                            Text('19')
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 1.h,
                  color: line2clr,
                ),

                Column(
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
                            1.w.widthBox,
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
                    Align(
                      child: Text(
                        'I drink to make other people more interesting.',
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    1.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                            2.w.widthBox,
                            Icon(Icons.comment_outlined),
                            Text('3'),
                            2.w.widthBox,
                            Icon(Icons.visibility_outlined),
                            Text('19')
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  thickness: 1.h,
                  color: line2clr,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                            1.w.widthBox,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Rosy Rose'),
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
                    Text('Working from home'),
                    1.h.heightBox,
                    Image.asset('assets/images/comp.png'),
                    1.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                            2.w.widthBox,
                            Icon(Icons.comment_outlined),
                            Text('3'),
                            2.w.widthBox,
                            Icon(Icons.visibility_outlined),
                            Text('19')
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 1.h,
                  color: line2clr,
                ),
                Column(
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
                            1.w.widthBox,
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
                        'I have a lot of growing up to do. I realized that the other day inside my fort'),
                    1.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                            2.w.widthBox,
                            Icon(Icons.comment_outlined),
                            Text('3'),
                            2.w.widthBox,
                            Icon(Icons.visibility_outlined),
                            Text('19')
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  thickness: 1.h,
                  color: line2clr,
                ),
                // Stack(
                //   children: [
                //     Image.asset('assets/images/coc.png'),
                //     Positioned(
                //       child: Text(
                //         'INR-200',
                //         style: TextStyle(fontSize: 15),
                //       ),
                //       bottom: 2,
                //       right: 30,
                //     ),
                //     Positioned(
                //       child: Icon(Icons.thumb_up),
                //       bottom: 2,
                //       right: 2,
                //     )
                // ],
                // ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset('assets/images/coc.png'),
                    Row(
                      children: [
                        Spacer(),
                        Text(
                          'INR-50',
                          style: TextStyle(fontSize: 15),
                        ),
                        2.w.widthBox,
                        Icon(Icons.thumb_up),
                      ],
                    ).paddingOnly(right: 10)
                  ],
                ),
                Divider(
                  thickness: 1.h,
                  color: line2clr,
                ),
                Column(
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
                            1.w.widthBox,
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
                        '''I'm killing time while I wait for life to shower me with meaning and happiness.'''),
                    1.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                            2.w.widthBox,
                            Icon(Icons.comment_outlined),
                            Text('3'),
                            2.w.widthBox,
                            Icon(Icons.visibility_outlined),
                            Text('19')
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  thickness: 1.h,
                  color: line2clr,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                            1.w.widthBox,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Rosy Rose'),
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
                    Text('Chilling Together!!!'),
                    1.h.heightBox,
                    Image.asset('assets/images/group2.jpg'),
                    1.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                            2.w.widthBox,
                            Icon(Icons.comment_outlined),
                            Text('3'),
                            2.w.widthBox,
                            Icon(Icons.visibility_outlined),
                            Text('19')
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 1.h,
                  color: line2clr,
                ),

                Column(
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
                            1.w.widthBox,
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
                    Align(
                      child: Text('Work Mode ON!!!'),
                      alignment: Alignment.centerLeft,
                    ),
                    1.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                            2.w.widthBox,
                            Icon(Icons.comment_outlined),
                            Text('3'),
                            2.w.widthBox,
                            Icon(Icons.visibility_outlined),
                            Text('19')
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  thickness: 1.h,
                  color: line2clr,
                ),
                // Spacer()
              ],
            ),
          )
          // ListView(
          //   children: [
          //     Container(
          //       child: Image.asset('assets/images/car.png'),
          //     )
          //   ],
          // )
        ],
      )
          // .paddingAll(10),
          ),
    );
  }
}
