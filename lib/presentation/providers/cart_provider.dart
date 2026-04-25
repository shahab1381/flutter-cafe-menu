import 'package:flutter/material.dart';
import '../../domain/entities/cart_item.dart';
import '../../domain/entities/product.dart';

class CartProvider extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  // اضافه کردن محصول به سبد
  void addProduct(Product product) {
    final index = _items.indexWhere((item) => item.product.id == product.id);

    if (index != -1) {
      final existing = _items[index];
      _items[index] = CartItem(
        product: existing.product,
        quantity: existing.quantity + 1,
      );
    } else {
      _items.add(CartItem(product: product, quantity: 1));
    }

    notifyListeners();
  }

  // کاهش تعداد
  void decrease(Product product) {
    final index = _items.indexWhere((item) => item.product.id == product.id);

    if (index != -1) {
      final existing = _items[index];

      if (existing.quantity > 1) {
        _items[index] = CartItem(
          product: existing.product,
          quantity: existing.quantity - 1,
        );
      } else {
        _items.removeAt(index);
      }

      notifyListeners();
    }
  }

  // حذف کامل محصول
  void remove(Product product) {
    _items.removeWhere((item) => item.product.id == product.id);
    notifyListeners();
  }

  // قیمت کل
  double get totalPrice {
    return _items.fold(
      0,
      (sum, item) => sum + (item.product.price * item.quantity),
    );
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}
