import 'package:flutter/material.dart';
import 'package:food_delivery_application/home/food_page_body.dart';
import 'package:food_delivery_application/utils/colors.dart';
import 'package:food_delivery_application/utils/dimensions.dart';
import 'package:food_delivery_application/widgets/big_text.dart';
import 'package:food_delivery_application/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);
  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // removed a container from here
          Container(
            margin: EdgeInsets.only(top: 50, bottom: Dimensions.height15),
            padding: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // country and city name
                Column(
                  children: [
                    BigText(
                        text: "India", color: AppColors.mainColor, size: 30),
                    const Row(
                      children: [
                        SmallText(text: 'Jamshedpur', color: Colors.black54),
                        Icon(Icons.arrow_drop_down_rounded),
                      ],
                    )
                  ],
                ),

                // search icon
                Center(
                  child: Container(
                    width: Dimensions.height45,
                    height: Dimensions.height45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor,
                    ),
                    child: const Icon(Icons.search, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          FoodPageBody(),
        ],
      ),
    );
  }
}
