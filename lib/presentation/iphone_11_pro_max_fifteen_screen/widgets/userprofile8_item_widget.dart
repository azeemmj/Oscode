import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class Userprofile8ItemWidget extends StatelessWidget {
  const Userprofile8ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      width: 175.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          CustomImageView(
            imagePath: ImageConstant.imgChristinaWocin56x56,
            height: 56.adaptSize,
            width: 56.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            "Davis Johnson",
            style: CustomTextStyles.titleMediumLatoBlack900_1,
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: CustomRatingBar(
              alignment: Alignment.centerLeft,
              ignoreGestures: true,
              initialRating: 0,
            ),
          ),
          SizedBox(height: 9.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Computer studies",
                style: CustomTextStyles.labelLargeLatoPurpleA200,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "English",
                  style: CustomTextStyles.labelLargeLatoLightblue100,
                ),
              ),
            ],
          ),
          SizedBox(height: 2.v),
          Text(
            "Chemistry",
            style: CustomTextStyles.labelLargeLatoDeeppurple200,
          ),
        ],
      ),
    );
  }
}
