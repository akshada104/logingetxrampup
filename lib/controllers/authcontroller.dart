import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;

  // Firebase.initializeApp().whenComplete(() {
  //   print("completed");

  // }
  void createUser(String email, String password, String name) async {
    try {
      if (email != '' && password != '') {
        Get.snackbar('Signing Up', 'Please wait...',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.white38,
            duration: Duration(milliseconds: 900),
            overlayBlur: 1);
      }
    } catch (e) {
      Get.snackbar(
        "Error while Signing Up",
        e.message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.white38,
        duration: Duration(milliseconds: 900),
        overlayBlur: 1,
      );
    }
  }

  void login(String email, String password) async {
    try {
      if (email != '' && password != '') {
        Get.snackbar('Signing In', 'Please wait...',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.white38,
            duration: Duration(milliseconds: 900),
            overlayBlur: 1);
      }
    } catch (e) {
      Get.snackbar(
        "Error while Signing In",
        e.message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.white38,
        duration: Duration(milliseconds: 900),
        overlayBlur: 1,
      );
    }
  }

  void signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      Get.snackbar(
        "Error while signing out",
        e.message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.white38,
        overlayBlur: 1,
      );
    }
  }
}
