import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class EventDetailsEighteenBottomsheet extends StatelessWidget {
  const EventDetailsEighteenBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL38,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 2.v,
              width: 26.h,
              decoration: BoxDecoration(
                color: appTheme.gray4007f,
                borderRadius: BorderRadius.circular(
                  1.h,
                ),
              ),
            ),
          ),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Text(
              "Cancel scheduled session",
              style: theme.textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 15.v),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 90.adaptSize,
              width: 90.adaptSize,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.2,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgStar190x90,
                      height: 90.adaptSize,
                      width: 90.adaptSize,
                      radius: BorderRadius.circular(
                        5.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  CustomIconButton(
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                    padding: EdgeInsets.all(12.h),
                    decoration: IconButtonStyleHelper.fillRedA,
                    alignment: Alignment.center,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVideoCameraPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Container(
            width: 302.h,
            margin: EdgeInsets.only(
              left: 9.h,
              right: 32.h,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        "Are you sure you want to cancel your scheduled session with ",
                    style: CustomTextStyles.bodyLargeAirbnbCerealWBkGray700_1,
                  ),
                  TextSpan(
                    text: "Ibrahim Hassan",
                    style: CustomTextStyles.bodyLargeAirbnbCerealWBkGray90001,
                  ),
                  TextSpan(
                    text: " at ",
                    style: CustomTextStyles.bodyLargeAirbnbCerealWBkGray700_1,
                  ),
                  TextSpan(
                    text: "3:00pm ",
                    style: CustomTextStyles.bodyLargeAirbnbCerealWBkGray90001,
                  ),
                  TextSpan(
                    text: "on ",
                    style: CustomTextStyles.bodyLargeAirbnbCerealWBkGray700_1,
                  ),
                  TextSpan(
                    text: "Fri 24 june 2022 ",
                    style: CustomTextStyles.bodyLargeAirbnbCerealWBkGray90001,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomElevatedButton(
                  height: 58.v,
                  width: 128.h,
                  text: "no".toUpperCase(),
                  buttonStyle: CustomButtonStyles.fillGrayTL15,
                  buttonTextStyle: CustomTextStyles.titleMediumGray800,
                ),
                SizedBox(
                  height: 58.v,
                  width: 200.h,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 58.v,
                          width: 200.h,
                          padding: EdgeInsets.all(14.h),
                          decoration: AppDecoration.outlineIndigo3003f.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: CustomIconButton(
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            padding: EdgeInsets.all(8.h),
                            decoration: IconButtonStyleHelper.fillRed,
                            alignment: Alignment.centerRight,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowleft,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 74.h),
                          child: Text(
                            "Yes".toUpperCase(),
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
        ],
      ),
    );
  }
}
