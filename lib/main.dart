import 'package:flutter/material.dart';
import 'package:food_app/controllers/popular_product_controller.dart';
import 'package:food_app/pages/food/recommended_food_detail.dart';
import 'package:food_app/pages/home/food_page_body.dart';
import 'package:food_app/pages/home/main_food_page.dart';
import 'package:get/get.dart';
import 'package:food_app/helper/dependencies.dart' as dep;

Future<void> main() async {
  // this will wait for all the dependencies to be initialized
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Food Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MainFoodPage(),
      // home: PopularFoodDetail(),
      home: MainFoodPage(),
    );
  }
}
