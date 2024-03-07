import 'package:get/get.dart';

class BottomNavController extends GetxController {
  int CurrentSelectedIndex = 0;

  void ChnageScreen(int index) {
    CurrentSelectedIndex = index;
    update();
  }

  void backtohome() {
    ChnageScreen(0);
  }
}
