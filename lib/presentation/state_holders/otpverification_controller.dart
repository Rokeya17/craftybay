import 'package:get/get.dart';

import '../../data/service/network_caller.dart';
import '../../data/service/network_response.dart';
import '../utility/urls.dart';

class OtpVerificationController extends GetxController {
  bool _otpVerificationInprogress = false;
  final String _message = '';
  bool get otpVerificationInprogress => _otpVerificationInprogress;
  String get message => _message;
  Future<bool> verifyOtp(String email, String otp) async {
    _otpVerificationInprogress = true;
    update();
    final NetworkResponse response =
        await NetworkCaller().getRequest(Urls.verifyOtp(email, otp));
    _otpVerificationInprogress = false;
    update();
    if (response.isSuccess) {
      return true;
    } else {
      return false;
    }
  }
}
