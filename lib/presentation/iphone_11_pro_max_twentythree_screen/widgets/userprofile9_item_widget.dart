import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class Userprofile9ItemWidget extends StatelessWidget {
  const Userprofile9ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          CustomImageView(
            imagePath: ImageConstant.imgChristinaWocin,
            height: 56.adaptSize,
            width: 56.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
            alignment: Alignment.center,
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "Omowumi John",
              style: CustomTextStyles.titleMediumLatoBlack900_1,
            ),
          ),
          SizedBox(height: 5.v),
          CustomRatingBar(
            ignoreGestures: true,
            initialRating: 0,
          ),
          SizedBox(height: 8.v),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "Mathematics",
                        style: CustomTextStyles.labelLargeLatoDeeppurple200,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "Biology",
                        style: CustomTextStyles.labelLargeLatoPurpleA200,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Text(
                  "Physics",
                  style: CustomTextStyles.labelLargeLatoLightblue100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
