import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';

class EventDetailsTwentysevenScreen extends StatelessWidget {
  const EventDetailsTwentysevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 41.v),
          child: Column(
            children: [
              SizedBox(
                height: 180.adaptSize,
                width: 180.adaptSize,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Opacity(
                      opacity: 0.2,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgStar11,
                        height: 180.adaptSize,
                        width: 180.adaptSize,
                        radius: BorderRadius.circular(
                          10.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 91.adaptSize,
                        width: 91.adaptSize,
                        padding: EdgeInsets.symmetric(
                          horizontal: 25.h,
                          vertical: 31.v,
                        ),
                        decoration: AppDecoration.fillTeal6001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder45,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCheckmarkPrimary,
                          height: 27.v,
                          width: 39.h,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.v),
              SizedBox(
                width: 211.h,
                child: Text(
                  "Session schedule \nsuccessful",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineSmallPoppinsBlack900,
                ),
              ),
              SizedBox(height: 8.v),
              SizedBox(
                width: 240.h,
                child: Text(
                  "You have been successfully charged for the session, you can reschedule or cancel 24hrs before the scheduled session",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleSmallPoppinsGray60004.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildButtonColor(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgBack,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMore,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 9.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildButtonColor(BuildContext context) {
    return Container(
      height: 30.v,
      width: 163.h,
      margin: EdgeInsets.only(
        left: 146.h,
        right: 66.h,
        bottom: 47.v,
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 30.adaptSize,
              width: 30.adaptSize,
              decoration: AppDecoration.outlineIndigoF.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: CustomIconButton(
                height: 30.adaptSize,
                width: 30.adaptSize,
                padding: EdgeInsets.all(8.h),
                alignment: Alignment.center,
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowleft,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Pay now".toUpperCase(),
              style: CustomTextStyles.titleMediumLatoGray5001,
            ),
          ),
        ],
      ),
    );
  }
}
