import 'dart:convert';
import 'dart:developer';

import 'package:craftybay/presentation/ui/screens/auth/email_verificationscreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../presentation/ui/screens/auth/authcontroller.dart';
import 'network_response.dart';

class CraftyBay {
  static GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();
}

class NetworkCaller {
  Future<NetworkResponse> getRequest(String url, {bool isLogin = false}) async {
    try {
      Response response = await get(Uri.parse(url),
          headers: {'token': AuthController.accessToken.toString()});
      log(response.statusCode.toString());
      log(response.body);
      if (response.statusCode == 200) {
        return NetworkResponse(
            true, response.statusCode, jsonDecode(response.body));
      } else if (response.statusCode == 401) {
        if (isLogin) {
          await gotoLogin();
        }
      } else {
        return NetworkResponse(false, response.statusCode, null);
      }
    } catch (e) {
      log(e.toString());
    }
    return NetworkResponse(false, -1, null);
  }

  Future<NetworkResponse> postRequest(String url, Map<String, dynamic> body,
      {bool isLogin = false}) async {
    try {
      Response response = await post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'token': AuthController.accessToken.toString()
        },
        body: jsonEncode(body),
      );
      log(response.statusCode.toString());
      log(response.body);
      if (response.statusCode == 200) {
        return NetworkResponse(
          true,
          response.statusCode,
          jsonDecode(response.body),
        );
      } else if (response.statusCode == 401) {
        if (!isLogin) {
          await gotoLogin();
        }
      } else {
        return NetworkResponse(false, response.statusCode, null);
      }
    } catch (e) {
      log(e.toString());
    }
    return NetworkResponse(false, -1, null);
  }

  Future<void> gotoLogin() async {
    await AuthController.clear();
    Navigator.pushAndRemoveUntil(
      CraftyBay.globalKey.currentState!.context,
      MaterialPageRoute(builder: (context) => const EmailVerification()),
      (route) => false,
    );
  }
}
