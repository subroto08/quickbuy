import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:QuickBuy/features/personalization/screens/address/address_model.dart'; // Assuming you have this
import 'package:QuickBuy/features/shop/models/cart_item_model.dart'; // You will need this model

enum OrderStatus { processing, shipped, delivered, cancelled }

class OrderModel {
  final String id;
  final String userId;
  final OrderStatus status;
  final double totalAmount;
  final DateTime orderDate;
  final String paymentMethod;
  final AddressModel? address;
  final DateTime? deliveryDate;
  final List<CartItemModel> items;

  OrderModel({
    required this.id,
    this.userId = '',
    required this.status,
    required this.totalAmount,
    required this.orderDate,
    this.paymentMethod = 'Paypal',
    this.address,
    this.deliveryDate,
    required this.items,
  });

  Map<String, dynamic> toJson() {
    return {
      'UserId': userId,
      'Status': status.toString(), // Enum to String
      'TotalAmount': totalAmount,
      'OrderDate': orderDate,
      'PaymentMethod': paymentMethod,
      'Address': address?.toJson(), // Assumes AddressModel has toJson()
      'DeliveryDate': deliveryDate,
      'Items': items.map((item) => item.toJson()).toList(), // Assumes CartItemModel has toJson()
    };
  }

  factory OrderModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return OrderModel(
      id: document.id,
      userId: data['UserId'] ?? '',
      status: OrderStatus.values.firstWhere((e) => e.toString() == data['Status'], orElse: () => OrderStatus.processing),
      totalAmount: (data['TotalAmount'] as num?)?.toDouble() ?? 0.0,
      orderDate: (data['OrderDate'] as Timestamp).toDate(),
      paymentMethod: data['PaymentMethod'] ?? '',
      address: data['Address'] != null ? AddressModel.fromMap(data['Address']) : null,
      deliveryDate: data['DeliveryDate'] != null ? (data['DeliveryDate'] as Timestamp).toDate() : null,
      items: (data['Items'] as List<dynamic>)
          .map((itemData) => CartItemModel.fromMap(itemData as Map<String, dynamic>))
          .toList(),
    );
  }
}