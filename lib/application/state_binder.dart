import 'package:craftybay/presentation/state_holders/email_verification_controller.dart';
import 'package:craftybay/presentation/state_holders/otpverification_controller.dart';
import 'package:get/get.dart';

import '../presentation/state_holders/nav_bottom_controller.dart';

class StateBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavController());
    Get.put(EmailVerificationController());
    Get.put(OtpVerificationController());
  }
}
