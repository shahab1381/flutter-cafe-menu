import 'package:flutter/material.dart';
import '../../data/repositories/menu_repository.dart';
import '../../domain/entities/category.dart';

class CategoryProvider extends ChangeNotifier {
  final MenuRepository menuRepository;

  List<Category> _categories = [];
  List<Category> get categories => _categories;

  String _activeCategoryId = '';
  String get activeCategoryId => _activeCategoryId;

  CategoryProvider(this.menuRepository);

  Future<void> loadCategories() async {
    _categories = await menuRepository.getCategories();

    if (_categories.isNotEmpty) {
      _activeCategoryId = _categories.first.id;
    }

    notifyListeners();
  }

  void setActiveCategory(String id) {
    _activeCategoryId = id;
    notifyListeners();
  }
}
