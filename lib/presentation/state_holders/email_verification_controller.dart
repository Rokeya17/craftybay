import 'package:get/get.dart';

import '../../data/service/network_caller.dart';
import '../../data/service/network_response.dart';
import '../utility/urls.dart';

class EmailVerificationController extends GetxController {
  bool _emailVerificationInProgress = false;
  String _message = '';

  bool get emailVerificationInProgress => _emailVerificationInProgress;

  String get message => _message;

  Future<bool> verifyEmail(String email) async {
    _emailVerificationInProgress = true;
    update();
    final NetworkResponse response =
        await NetworkCaller().getRequest(Urls.verifyEmail(email));
    _emailVerificationInProgress = false;
    _emailVerificationInProgress = false;
    update();
    if (response.isSuccess) {
      _message = response.responseJson?['data'] ?? '';
      return true;
    } else {
      return false;
    }
  }
}
//
// import 'package:craftybay/presentation/utility/urls.dart';
// import 'dart:html';
// import 'package:craftybay/data/service/network_caller.dart';
// import 'package:craftybay/data/service/network_response.dart';
// import 'package:get/get.dart';
//
// class EmailVerificationController extends GetxController {
//   bool get emailVerificationInprogress = false ;
//   String message = '';
//   bool get emailVerificationInProgress => _emailVerificationInProgress;
//   String get message => _message;
//   Future<bool> verifyemail(String email) async{
//     _emailVerificationInProgress = true;
//     update();
//     final NetworkResponse response = await  NetworkCaller().getRequest(Urls.verifyEmail(email));
//     _emailVerificationInProgress = false;
//     update();
//     if(
//
//     response.isSuccess
//     ){
//       return true;
//     }
//     else{
//       return false;
//     }
//   }
//
// }
