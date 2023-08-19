import 'package:flutter/material.dart';
import 'package:food_app/routes/route_helper.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimensions.dart';
import 'package:food_app/widgets/app_icon.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/expandable_text.dart';
import 'package:get/get.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // top scrollable section
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // the two icons section
            automaticallyImplyLeading: false,
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.initial);
                  },
                  child: const AppIcon(icon: Icons.clear),
                ),
                const AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            // the text between image and text sectioon
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),
                child: Center(
                  child: BigText(
                    text: "Chinese Side",
                    size: Dimensions.font26,
                  ),
                ),
              ),
            ),
            expandedHeight: 300,
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            // image
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/image/food0.png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: ExpandableTextWidget(
                      text:
                          'hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there hello there '),
                ),
              ],
            ),
          )
        ],
      ),
      // bottom card and add or remove secton
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // bottom showing add or remove container
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimensions.iconSize24,
                ),
                BigText(
                  text: '\$12.88  X  0',
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  icon: Icons.add,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimensions.iconSize24,
                ),
              ],
            ),
          ),
          // add to cart section
          Container(
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
                    child: Icon(
                      Icons.favorite_outline_outlined,
                      color: AppColors.mainColor,
                    )),
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
                  child:
                      BigText(text: "\$10 | Add to Cart", color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
