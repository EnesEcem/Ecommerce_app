import 'package:ecommerce_app/controller/controllers.dart';
import 'package:ecommerce_app/view/home/components/carousel_slider/coursel_slider_view.dart';
import 'package:ecommerce_app/view/home/components/popular_category/popular_category_loading.dart';
import 'package:ecommerce_app/view/home/components/popular_category/section_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../component/main_header.dart';
import 'components/carousel_slider/carousel_loading.dart';
import 'components/popular_category/popular_category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          MainHeader(),
          Obx(
            (() {
              if (homeController.bannerList.isNotEmpty) {
                return CarouselSliderView(
                  bannerList: homeController.bannerList,
                );
              } else {
                return CarouselLoading();
              }
            }),
          ),
          SectionTitle(title: "Popular Category"),
          Obx(
            (() {
              if (homeController.popularCategoryList.isNotEmpty) {
                return PopularCategory(
                    categories: homeController.popularCategoryList);
              } else {
                return PopularCategoryLoading();
              }
            }),
          )
        ],
      ),
    );
  }
}
