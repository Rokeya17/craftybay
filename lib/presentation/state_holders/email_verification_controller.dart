import 'package:craftybay/data/service/network_caller.dart';
import 'package:craftybay/data/service/network_response.dart';
import 'package:craftybay/presentation/utility/urls.dart';
import 'package:get/get.dart';

class EmailVerificationController extends GetxController {
  bool _emailVerificationInprogress = false;
  final String _message = '';

  bool get emailVerificationInProgress => _emailVerificationInprogress;
  String get message => _message;
  Future<bool> verifyemail(String email) async {
    _emailVerificationInprogress = true;
    update();
    final NetworkResponse response =
        await NetworkCaller().getRequest(Urls.verifyEmail(email));
    _emailVerificationInprogress = false;
    update();
    if (response.isSuccess) {
      return true;
    } else {
      return false;
    }
  }
}
