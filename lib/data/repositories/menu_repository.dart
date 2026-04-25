import 'dart:async';
import '../../domain/entities/category.dart';
import '../../domain/entities/product.dart';
import '../datasources/mock/mock_data.dart';

class MenuRepository {
  Future<List<Category>> getCategories() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return mockCategories;
  }

  Future<List<Product>> getProducts(String categoryId) async {
    await Future.delayed(const Duration(milliseconds: 500));

    return mockProducts
        .where((product) => product.categoryId == categoryId)
        .toList();
  }
}
