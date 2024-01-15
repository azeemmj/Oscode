import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';

// ignore: must_be_immutable
class Eventcardlist2ItemWidget extends StatelessWidget {
  const Eventcardlist2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBluegray6000f01.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        children: [
          Container(
            height: 92.v,
            width: 79.h,
            decoration: AppDecoration.fillOrange.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage88,
              height: 92.v,
              width: 79.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 3.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Fri, Apr 23 •\r6:00 PM\r",
                  style: CustomTextStyles.bodyMediumIndigoA2000313,
                ),
                SizedBox(height: 2.v),
                SizedBox(
                  width: 158.h,
                  child: Text(
                    "International Kids Safe Parents Night Out",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallAirbnbCerealWMdGray90003,
                  ),
                ),
                SizedBox(height: 5.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup6BlueGray20002,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "Lot 13 • Pune, India",
                        style: CustomTextStyles.bodyMediumGray60013,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
