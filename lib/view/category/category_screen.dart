import 'package:ecommerce_app/component/main_header.dart';
import 'package:ecommerce_app/controller/controllers.dart';
import 'package:ecommerce_app/model/question.dart';
import 'package:ecommerce_app/view/category/category_card.dart';
import 'package:ecommerce_app/view/home/components/popular_category/popular_category.dart';
import 'package:ecommerce_app/view/home/components/popular_category/popular_category_loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          MainHeader(),
          SafeArea(
              child: Column(
            children: [],
          ))
        ],
      ),
    );
  }
}
