import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimensions.dart';
import 'package:food_app/widgets/app_column.dart';
import 'package:food_app/widgets/app_icon.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/expandable_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/food0.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // top bar icons
          Positioned(
            top: Dimensions.height60,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          // bottom page top heading section
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.popularFoodImgSize - Dimensions.height20,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(text: 'Chinese Slide'),
                  SizedBox(height: Dimensions.height20),
                  BigText(text: 'Introduce'),
                  // expandable text widget
                  const SizedBox(height: 20),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              'hello there how are you i am fineello there how are you i am fine hello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am fine hello there how are you i am fineello there how are you i am fine hello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehell o there how are you i am finehello there how are you i am fineello there how are you i am fine hello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am fine hello there how are you i am fineello there how are you i am fine hello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i am finehell o there how are you i am finehello there how are you i am fineello there how are you i am fine hello there how are you i am finehello there how are you i am finehello there how are you i am finehello there how are you i '),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      // bottom page lower add to cart section
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
          top: Dimensions.height30,
          bottom: Dimensions.height30,
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // showing plus and minus icons
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor),
                  SizedBox(width: Dimensions.width10 / 2),
                  BigText(text: '0'),
                  SizedBox(width: Dimensions.width10 / 2),
                  Icon(Icons.add, color: AppColors.signColor),
                ],
              ),
            ),
            // add to cart button
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor),
              child: BigText(text: "\$10 | Add to Cart", color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
