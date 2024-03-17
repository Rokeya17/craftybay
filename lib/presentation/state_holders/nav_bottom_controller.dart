// ignore_for_file: non_constant_identifier_names

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
