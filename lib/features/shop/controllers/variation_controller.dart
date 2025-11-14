import 'package:get/get.dart';
import 'package:QuickBuy/features/shop/models/product_model.dart';
import 'package:QuickBuy/features/shop/models/product_variation_model.dart';

class VariationController extends GetxController {
  static VariationController get instance => Get.find();

  // Selected attributes
  RxMap<String, String> selectedAttributes = <String, String>{}.obs;

  // Selected variation
  Rx<ProductVariationModel?> selectedVariation = Rx<ProductVariationModel?>(null);

  // Reset selected attributes when switching products
  void resetSelectedAttributes() {
    selectedAttributes.clear();
    selectedVariation.value = null;
  }

  // Method to select an attribute
  void onAttributeSelected(ProductModel product, String attributeName, String attributeValue) {
    // Add/Update the selection
    selectedAttributes[attributeName] = attributeValue;

    // Check if the selected combination matches any variation
    final matchingVariation = product.productVariations?.firstWhereOrNull(
          (variation) {
        // Check if all selected attributes match the variation's attributes
        return selectedAttributes.entries.every(
              (entry) => variation.attributeValues[entry.key] == entry.value,
        );
      },
    );

    // Update the selected variation
    selectedVariation.value = matchingVariation;
  }
}