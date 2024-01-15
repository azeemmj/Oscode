import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';

class EventDetailsSevenScreen extends StatelessWidget {
  const EventDetailsSevenScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 18.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTwentyEight(context),
              SizedBox(height: 5.v),
              _buildTwentySeven(context),
              SizedBox(height: 5.v),
              _buildTwentySix(context),
              SizedBox(height: 5.v),
              _buildTwentyFive(context),
              Spacer(),
              SizedBox(height: 2.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 58.v,
                  width: 271.h,
                  margin: EdgeInsets.only(left: 39.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 58.v,
                          width: 271.h,
                          padding: EdgeInsets.all(14.h),
                          decoration: AppDecoration.outlineIndigoF.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: CustomIconButton(
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            padding: EdgeInsets.all(8.h),
                            alignment: Alignment.centerRight,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowleft,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Pay now".toUpperCase(),
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 45.v,
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownGray90003,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 9.v,
          bottom: 14.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "Buy ticket",
        margin: EdgeInsets.only(left: 11.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(24.h, 9.v, 24.h, 14.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTwentyEight(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillBlueGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img8798641,
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(
              top: 14.v,
              bottom: 13.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wallet",
                  style: theme.textTheme.titleLarge,
                ),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "Amazon Pay and more",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownBlack900,
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.only(
              top: 16.v,
              bottom: 13.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentySeven(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillBlueGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUpiIcon1,
            height: 26.adaptSize,
            width: 26.adaptSize,
            margin: EdgeInsets.only(
              top: 14.v,
              bottom: 12.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "UPI",
                  style: theme.textTheme.titleLarge,
                ),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "Instant payment using UPI app",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownBlack900,
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.only(
              top: 14.v,
              bottom: 12.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentySix(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillBlueGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img7334511,
            height: 26.adaptSize,
            width: 26.adaptSize,
            margin: EdgeInsets.only(
              top: 12.v,
              bottom: 10.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Net Banking",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 3.v),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "All india banks",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownBlack900,
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFive(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillBlueGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img30372471,
            height: 26.adaptSize,
            width: 26.adaptSize,
            margin: EdgeInsets.only(
              top: 13.v,
              bottom: 11.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Credit / Debit",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 5.v),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "Visa, Mastercard, Rupay and more",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownBlack900,
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 13.v),
          ),
        ],
      ),
    );
  }
}
