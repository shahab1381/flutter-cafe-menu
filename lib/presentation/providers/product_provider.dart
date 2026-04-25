import 'package:flutter/material.dart';
import '../../../data/repositories/menu_repository.dart';
import '../../../domain/entities/product.dart';

class ProductProvider extends ChangeNotifier {
  final MenuRepository _repository;

  ProductProvider(this._repository);

  // products grouped by category
  final Map<String, List<Product>> _categorized = {};
  Map<String, List<Product>> get categorizedProducts => _categorized;

  Future<void> loadAllProducts(List<String> categoryIds) async {
    _categorized.clear();

    for (var id in categoryIds) {
      final products = await _repository.getProducts(id);
      _categorized[id] = products;
    }

    notifyListeners();
  }
}
