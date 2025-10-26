import 'package:QuickBuy/features/authentication/screens/login/login.dart';
import 'package:QuickBuy/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  /// variable
  final deviceStorage = GetStorage();

  ///called from main.dart on app lunch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
   /// local storage
    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true ? Get.offAll(() =>const LoginScreen()) : Get.offAll(const OnBoardingScreen());


  }

  /*--------Email and password sign-in ----------*/

/// Email authentication - sign in
/// Email authentication - register
/// Re-authenticate - Re authenticate user
/// Email verification - mail verification
/// Email Authentication - Forget password
/// Google authentication - Google
/// facebook authentication - facebook
/// logout user - valid for any authentication
/// Delete user - remove user from auth and firebase account
}