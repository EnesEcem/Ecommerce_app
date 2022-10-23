import 'package:ecommerce_app/controller/controllers.dart';
import 'package:ecommerce_app/view/product/components/product_grid.dart';
import 'package:ecommerce_app/view/product/components/product_loading_grid.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import '../../component/main_header.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const MainHeader(),
          Expanded(child: Obx(() {
            if (productController.productList.isNotEmpty) {
              return ProductGrid(products: productController.productList);
            } else {
              return const ProductLoadingGrid();
            }
          }))
        ],
      ),
    );
  }
}
