import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile10ItemWidget extends StatelessWidget {
  const Userprofile10ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      width: 175.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgChristinaWocin,
            height: 56.adaptSize,
            width: 56.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            "Omowumi John",
            style: CustomTextStyles.titleMediumLatoBlack900_1,
          ),
          SizedBox(height: 9.v),
          Text(
            "Biology",
            style: CustomTextStyles.titleMediumLatoIndigoA20003_1,
          ),
          SizedBox(height: 6.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "1:00pm",
                style: theme.textTheme.titleSmall,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "Fri 24 june",
                  style: theme.textTheme.titleSmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
