import 'package:flutter/material.dart';

import '../presentation/screens/product/products_page.dart';
import '../presentation/screens/cart/cart_page.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // صفحه اصلی -> ProductsPage با دسته‌بندی بالا + اسکرول هوشمند
      case '/':
        return MaterialPageRoute(builder: (_) => const ProductsPage());

      // صفحه سبد خرید
      case '/cart':
        return MaterialPageRoute(builder: (_) => const CartPage());

      default:
        return MaterialPageRoute(builder: (_) => const ProductsPage());
    }
  }
}
