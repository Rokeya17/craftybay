

import 'package:craftybay/data/service/network_caller.dart';
import 'package:craftybay/data/service/network_response.dart';
import 'package:get/get.dart';

class EmailVerificationController extends GetxController {
  bool get emailVerificationInprogress = false;
  String message = '';
  bool get emailVerificationInProgress => _emailVerificationInProgress;
  String get message => _message;
  Future<bool> verifyemail() async{
    _emailVerificationInProgress = true;
    update();
    final NetworkResponse response = await  NetworkCaller().
  }
}
