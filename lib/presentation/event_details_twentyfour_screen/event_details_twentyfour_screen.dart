import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';

class EventDetailsTwentyfourScreen extends StatelessWidget {
  const EventDetailsTwentyfourScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 54.h,
            vertical: 41.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                        imagePath: ImageConstant.imgStar12,
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
                        padding: EdgeInsets.all(25.h),
                        decoration: AppDecoration.fillYellow900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder45,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgVideoCameraPrimary,
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                "Pending confirmation",
                style: CustomTextStyles.headlineSmallPoppinsBlack900,
              ),
              SizedBox(height: 6.v),
              Container(
                width: 220.h,
                margin: EdgeInsets.only(
                  left: 23.h,
                  right: 22.h,
                ),
                child: Text(
                  "Your session has not been confirmed by the tutor, this will may take few hours, you will be notified when it’s confirmed",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleSmallPoppinsGray60004.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              Spacer(),
              SizedBox(height: 4.v),
              Text(
                "Pay later".toUpperCase(),
                style: CustomTextStyles.titleMediumLatoIndigoA2000318,
              ),
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
        bottom: 46.v,
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
