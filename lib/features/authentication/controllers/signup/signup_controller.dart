import 'package:QuickBuy/features/authentication/controllers/signup/loader.dart';
import 'package:QuickBuy/utils/constants/image_strings.dart';
import 'package:QuickBuy/utils/network/network_manager.dart';
import 'package:QuickBuy/utils/popups/full%20screen%20loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Text Controllers
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  /// --- Signup
  Future<void> signup() async {
    try {
      /// Start loading
      SFullScreenLoader.openLoadingDialog(
        'We are processing your information...',
        SImages.docerAnimation,
      );

      /// Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SFullScreenLoader.stopLoading();
        return;
      }

      /// Form validation
      if (!signupFormKey.currentState!.validate()) {
        SFullScreenLoader.stopLoading();
        return;
      }
      
      /// - Privacy policy check
      /// - Register user in Firebase Auth
      /// - Save user in Firestore
      /// - Show success message
      /// - Move to verify email screen

    } catch (e) {
      /// Show generic error
      SLoader.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      /// Stop loader
      SFullScreenLoader.stopLoading();
    }
  }
}
