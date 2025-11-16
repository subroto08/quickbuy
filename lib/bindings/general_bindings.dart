import 'package:QuickBuy/utils/network/network_manager.dart';
import 'package:get/get.dart';
import '../data/repositories/authentication_repository.dart';
import '../features/personalization/controllers/address_controller.dart';
import '../features/personalization/controllers/user_controller.dart';
import '../features/shop/controllers/cart_controller.dart';
import '../features/shop/controllers/checkout_controller.dart';
import '../features/shop/controllers/home_controller.dart';
import '../features/shop/controllers/order_controller.dart';
import '../features/shop/controllers/variation_controller.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies(){
    Get.put(UserController());
    Get.put(VariationController());
    Get.put(HomeController());
    Get.put(NetworkManager());
    Get.put(AuthenticationRepository());
    Get.put(AddressController());
    Get.put(CheckoutController());
    Get.put(OrderController());
    Get.put(CartController());
  }
}