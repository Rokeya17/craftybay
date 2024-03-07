import 'package:get/get.dart';

import '../presentation/state_holders/nav_bottom_controller.dart';

class StateBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavController());
  }
}
