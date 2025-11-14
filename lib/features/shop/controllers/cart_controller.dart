import 'package:get/get.dart';
import 'package:QuickBuy/features/shop/models/cart_item_model.dart';

class CartController extends GetxController {
  static CartController get instance => Get.find();

  // Variables
  RxList<CartItemModel> cartItems = <CartItemModel>[].obs;
  RxDouble totalCartPrice = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    // This is dummy data for demonstration.
    // In a real app, you'd fetch this from storage or add items dynamically.
    cartItems.add(CartItemModel(productId: '001', quantity: 2, price: 120.0, title: 'Black Sports Shoes'));
    cartItems.add(CartItemModel(productId: '002', quantity: 1, price: 16.0, title: 'Red T-Shirt'));
    updateCartTotals();
  }

  void addOneToCart(CartItemModel item) {
    item.quantity += 1;
    updateCartTotals();
    cartItems.refresh();
  }

  void removeOneFromCart(CartItemModel item) {
    if (item.quantity > 1) {
      item.quantity -= 1;
      updateCartTotals();
      cartItems.refresh();
    } else {
      // Remove item from cart
      cartItems.removeWhere((cartItem) => cartItem.productId == item.productId);
      updateCartTotals();
    }
  }

  void updateCartTotals() {
    double calculatedTotal = 0.0;
    for (var item in cartItems) {
      calculatedTotal += (item.price * item.quantity);
    }
    totalCartPrice.value = calculatedTotal;
  }

  void clearCart() {
    cartItems.clear();
    updateCartTotals();
  }
}