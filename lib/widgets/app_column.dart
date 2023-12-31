import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimensions.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/icon_and_text_widget.dart';
import 'package:food_app/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font26),
        SizedBox(height: Dimensions.height10),
        // ratings and comments row
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15,
                ),
              ),
            ),
            SizedBox(width: Dimensions.width10),
            SmallText(text: '4.5'),
            SizedBox(width: Dimensions.width10),
            SmallText(text: '1287'),
            SizedBox(width: Dimensions.width10),
            SmallText(text: 'comments'),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        // row to showin distance and time
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              text: 'Normal',
              icon: Icons.circle_sharp,
              iconColor: AppColors.iconColor1,
            ),
            IconAndTextWidget(
              text: '1.75km',
              icon: Icons.location_on,
              iconColor: AppColors.mainColor,
            ),
            IconAndTextWidget(
              text: '32min',
              icon: Icons.access_time_rounded,
              iconColor: AppColors.iconColor2,
            ),
          ],
        ),
      ],
    );
  }
}
