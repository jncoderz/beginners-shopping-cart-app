import 'package:categrised_search/data/products_data.dart';
import 'package:categrised_search/methods/custom_snackbar.dart';
import 'package:flutter/material.dart';

class CartBagMethod {
  void addToCart(context, data) {
    if (cartBag.contains(data)) {
      ScaffoldMessenger.of(context)
          .showSnackBar(CustomSnackbar().failedSnackbar());
    } else {
      cartBag.add(data);
      ScaffoldMessenger.of(context)
          .showSnackBar(CustomSnackbar().successSnackbar());
    }
  }
}

double calculateSubTotal() {
  return cartBag.fold(
      0.0, (subTotal, data) => subTotal + data.price * data.quantity);
}

double calculateDeliveryTotal() {
  if (cartBag.isEmpty) {
    return 0.0;
  } else {
    return 3;
  }
}
double calculateTotal(){
  return calculateSubTotal()+calculateDeliveryTotal();
}