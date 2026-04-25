import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:cafe_menu_app/presentation/providers/category_provider.dart';
import 'package:cafe_menu_app/presentation/providers/product_provider.dart';
import 'package:cafe_menu_app/presentation/widgets/category_card.dart';
import 'package:cafe_menu_app/presentation/widgets/product_card.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final ScrollController _scrollController = ScrollController();
  final Map<String, GlobalKey> _sectionKeys = {};
  bool _userScroll = true;

  @override
  void initState() {
    super.initState();

    Future.microtask(() async {
      final catProvider = context.read<CategoryProvider>();
      final prodProvider = context.read<ProductProvider>();

      await catProvider.loadCategories();
      if (!mounted) return;

      final ids = catProvider.categories.map((c) => c.id).toList();
      await prodProvider.loadAllProducts(ids);
      if (!mounted) return;
    });

    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_userScroll) return;

    final provider = context.read<CategoryProvider>();

    for (var cat in provider.categories) {
      final key = _sectionKeys[cat.id];
      if (key == null) continue;

      final ctx = key.currentContext;
      if (ctx == null) continue;

      final box = ctx.findRenderObject() as RenderBox;
      final pos = box.localToGlobal(Offset.zero).dy;

      if (pos < 140 && pos > -150) {
        provider.setActiveCategory(cat.id);
        break;
      }
    }
  }

  Future<void> scrollToCategory(String id) async {
    final key = _sectionKeys[id];
    if (key == null) return;

    final ctx = key.currentContext;
    if (ctx == null) return;

    final box = ctx.findRenderObject() as RenderBox;
    final offset = box.localToGlobal(Offset.zero).dy;

    final target = _scrollController.offset + offset - 120;

    _userScroll = false;

    await _scrollController.animateTo(
      target,
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeInOut,
    );

    Future.delayed(const Duration(milliseconds: 200), () {
      _userScroll = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final catProvider = context.watch<CategoryProvider>();
    final prodProvider = context.watch<ProductProvider>();

    final categories = catProvider.categories;
    final categorized = prodProvider.categorizedProducts;

    for (var c in categories) {
      _sectionKeys.putIfAbsent(c.id, () => GlobalKey());
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F9),

      // -------------------------------
      // CUSTOM APP BAR
      // -------------------------------
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(top: 10, left: 2, right: 2),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.07),
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                // --------------------------
                // YOUR CUSTOM SVG ICON HERE
                // --------------------------
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/icons/receipt.svg",
                    width: 32,
                    colorFilter: const ColorFilter.mode(
                      Colors.black,
                      BlendMode.srcIn,
                    ),
                  ),
                ),

                const Expanded(
                  child: Text(
                    "کافه رستوران شهاب",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                IconButton(
                  icon: const Icon(Icons.dehaze, color: Colors.black, size: 23),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),

      // -------------------------------
      // BODY
      // -------------------------------
      body:
          categories.isEmpty
              ? const Center(
                child: CircularProgressIndicator(color: Colors.black),
              )
              : Column(
                children: [
                  SizedBox(
                    height: 130,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      itemCount: categories.length,
                      itemBuilder: (_, i) {
                        final cat = categories[i];
                        final bool active =
                            cat.id == catProvider.activeCategoryId;

                        return CategoryCard(
                          category: cat,
                          isActive: active,
                          onTap: () => scrollToCategory(cat.id),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      controller: _scrollController,
                      children:
                          categories.map((cat) {
                            final list = categorized[cat.id] ?? [];

                            return Column(
                              key: _sectionKeys[cat.id],
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 10,
                                  ),
                                  child: Text(
                                    cat.title,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                ...list.map((p) => ProductCard(product: p)),
                                const SizedBox(height: 20),
                              ],
                            );
                          }).toList(),
                    ),
                  ),
                ],
              ),
    );
  }
}
