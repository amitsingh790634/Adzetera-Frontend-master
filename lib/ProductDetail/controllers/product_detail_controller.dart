import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:get/get.dart';

class ProductDetailController extends GetxController {
  RxBool isTrue = false.obs;
  ExpandedTileController controller1 = ExpandedTileController(isExpanded: true);

  void initState() {
    // initialize controller
    // controller1 = ExpandedTileController(isExpanded: true);
    // super.initState();
  }
}
