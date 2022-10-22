import 'package:ecommerce_app/model/category.dart';
import 'package:flutter/material.dart';

import 'popular_category_card.dart';

class PopularCategory extends StatelessWidget {
  final List<Category> categories;
  const PopularCategory({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 140,
        padding: EdgeInsets.only(right: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: categories.length,
          itemBuilder: (context, index) =>
              PopularCategoryCard(category: categories[index]),
        ));
  }
}
