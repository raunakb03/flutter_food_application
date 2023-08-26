import 'package:flutter/material.dart';
import 'package:food_app/controllers/cart_controller.dart';
import 'package:food_app/controllers/popular_product_controller.dart';
import 'package:food_app/routes/route_helper.dart';
import 'package:food_app/utils/app_constants.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimensions.dart';
import 'package:food_app/widgets/app_column.dart';
import 'package:food_app/widgets/app_icon.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/expandable_text.dart';
import 'package:get/get.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key, required this.pageId});
  final int pageId;
  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<PopularProductController>().popularProductList[pageId];

    Get.find<PopularProductController>()
        .initProduct(product, Get.find<CartController>());

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
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "${AppConstants.BASE_URL}${AppConstants.UPLOAD_URL}${product.img!}",
                  ),
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
              children: [
                GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteHelper.initial);
                    },
                    child: const AppIcon(
                      icon: Icons.arrow_back_ios,
                    )),
                const AppIcon(icon: Icons.shopping_cart_outlined),
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
                  AppColumn(text: product.name!),
                  SizedBox(height: Dimensions.height20),
                  BigText(text: 'Introduce'),
                  // expandable text widget
                  const SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(text: product.description),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      // bottom page lower add to cart section
      bottomNavigationBar: GetBuilder<PopularProductController>(
        builder: (popularProduct) {
          return Container(
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
                      GestureDetector(
                          onTap: () {
                            popularProduct.setQuantity(false);
                          },
                          child:
                              Icon(Icons.remove, color: AppColors.signColor)),
                      SizedBox(width: Dimensions.width10 / 2),
                      BigText(text: popularProduct.inCartItems.toString()),
                      SizedBox(width: Dimensions.width10 / 2),
                      GestureDetector(
                        onTap: () {
                          popularProduct.setQuantity(true);
                        },
                        child: Icon(Icons.add, color: AppColors.signColor),
                      ),
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
                  child: GestureDetector(
                    onTap: () {
                      popularProduct.addItem(product);
                    },
                    child: BigText(
                        text: "\$ ${product.price!} | Add to Cart",
                        color: Colors.white),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
