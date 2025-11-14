import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:QuickBuy/data/repositories/authentication_repository.dart';
import 'package:QuickBuy/data/repositories/order_model.dart';

class OrderRepository extends GetxController {
  static OrderRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// Fetch all orders for a specific user
  Future<List<OrderModel>> fetchUserOrders() async {
    try {
      final userId = AuthenticationRepository.instance.authUser?.uid;
      if (userId == null || userId.isEmpty) throw 'Unable to find user information.';

      final result = await _db.collection('Users').doc(userId).collection('Orders').get();
      return result.docs.map((doc) => OrderModel.fromSnapshot(doc)).toList();
    } catch (e) {
      throw 'Something went wrong while fetching order information. Try again later.';
    }
  }

  /// Save a new order for the user
  Future<void> saveOrder(OrderModel order, String userId) async {
    try {
      final userId = AuthenticationRepository.instance.authUser?.uid;
      if (userId == null || userId.isEmpty) throw 'Unable to find user information.';

      // Add the new order to the 'Orders' subcollection of the user
      await _db.collection('Users').doc(userId).collection('Orders').add(order.toJson());
    } catch (e) {
      throw 'Something went wrong while saving the order. Try again later.';
    }
  }
}