import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:QuickBuy/features/shop/models/payment_method_model.dart';
import 'package:QuickBuy/utils/constants/image_strings.dart';

import '../../personalization/screens/address/address_model.dart';

class CheckoutController extends GetxController {
  static CheckoutController get instance => Get.find();

  final Rx<AddressModel?> selectedAddress = Rx<AddressModel?>(null);
  final Rx<PaymentMethodModel> selectedPaymentMethod = PaymentMethodModel(
      'Paypal',
      Image(
        image: AssetImage(SImages.paypal),
        width: 60,
        height: 40,
      )).obs;

  @override
  void onInit() {
    super.onInit();
    // This is dummy data for demonstration.
    // In a real app, you'd fetch user addresses from a repository.
    selectedAddress.value = AddressModel(
        id: '1',
        name: 'John Doe',
        phoneNumber: '+123456789',
        street: '123 Main St',
        city: 'New York',
        state: 'NY',
        postalCode: '10001',
        country: 'USA',
        selectedAddress: true
    );
  }
}