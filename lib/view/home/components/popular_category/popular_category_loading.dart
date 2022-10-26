import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'popular_category_loading_card.dart';

class PopularCategoryLoading extends StatelessWidget {
  const PopularCategoryLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) => const PopularCategoryLoadingCard()),
    );
  }
}
