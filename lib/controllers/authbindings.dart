import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:logingetxrampup/controllers/authcontroller.dart';

class AuthBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }
}
