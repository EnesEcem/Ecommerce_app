import 'package:ecommerce_app/controller/dashboard_controller.dart';
import 'package:ecommerce_app/controller/home_controller.dart';
import 'package:get/get.dart';

import '../../controller/product_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
    Get.put(HomeController());
    Get.put(ProductController());
  }
}
