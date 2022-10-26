import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/controller/controllers.dart';
import 'package:ecommerce_app/view/home/components/popular_category/popular_category.dart';
import 'package:ecommerce_app/view/home/components/popular_category/section_title.dart';

import 'components/carousel_slider/carousel_slider_view.dart';
import 'components/popular_category/popular_category_loading.dart';
import 'components/carousel_slider/carousel_loading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        AppBar(title: Text("Welcome")),
        Obx(() {
          if (homeController.bannerList.isNotEmpty) {
            return CarouselSliderView(bannerList: homeController.bannerList);
          } else {
            return const CarouselLoading();
          }
        }),
        SectionTitle(title: "Popular Category"),
        Obx(() {
          if (homeController.popularCategoryList.isNotEmpty) {
            return PopularCategory(
                categories: homeController.popularCategoryList);
          } else {
            return const PopularCategoryLoading();
          }
        }),
      ],
    ));
  }
}
