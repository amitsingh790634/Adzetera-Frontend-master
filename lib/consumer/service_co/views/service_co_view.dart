import 'package:adzetera_frontend/consumer/service_co/controllers/service_co_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../widget/color_text.dart';

class ServiceCoView extends GetView<ServiceCoController> {
  ServiceCoController controller = Get.put(ServiceCoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(115.0),
        child: Column(
          children: [
            AppBar(
              backgroundColor: bluebtnclr,
              title: Image.asset(
                'assets/images/splash.png',
                color: Colors.white,
                scale: 8,
              ),
              centerTitle: true,
              // floating: true,
              leading: Image.asset(
                'assets/icons/account.png',
                color: Colors.white,
                scale: 1.7,
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  iconSize: 20.0,
                  onPressed: () => print('Messenger'),
                ),
              ],
            ),
            // 1.h.heightBox,
            Container(
              color: bluebtnclr,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        // color: Colors.white,
                        width: 85.w,
                        height: 5.h,
                        child: TextFormField(
                          keyboardType: TextInputType.text,

                          decoration: InputDecoration(
                              hintText: 'Search Services by name',
                              prefixIcon: Icon(Icons.search)),

                          // decoration: const InputDecoration(
                          //   enabledBorder: OutlineInputBorder(
                          //     borderSide: BorderSide(
                          //       color: Color(0xff4DC0C9),
                          //     ),
                          //   ),
                          //   focusedBorder: OutlineInputBorder(
                          //     borderSide:
                          //         BorderSide(color: Color(0xffA5ABB3), width: 0.5),
                          //   ),
                          // ),
                        ),
                      ),
                      const Icon(
                        Icons.mic,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  ).paddingOnly(left: 10, top: 10, right: 10),
                  1.h.heightBox
                ],
              ),
            ),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            // shape:
            //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: new GridTile(
                footer: new Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5)),
                      color: bluebtnclr,
                    ),
                    height: 3.h,
                    child: Center(
                        child: Text(
                      controller.nameList[index].toString(),
                      style: txtWhite,
                    ))),
                child: Container(
                  child: Image.asset(
                    controller.imgList[index],
                    scale: 2.6,
                  ),
                )),
            borderOnForeground: true,
            elevation: 10,
            // margin: EdgeInsets.all(5),
            // surfaceTintColor: Colors.amber,
          );
        },
      ),
    );
  }
}
