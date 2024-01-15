import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';

class Iphone11ProMaxSixteenScreen extends StatelessWidget {
  const Iphone11ProMaxSixteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        body: SizedBox(
          width: 414.h,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildNinetyFour(context),
                SizedBox(height: 407.v),
                _buildBookASession(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyFour(BuildContext context) {
    return SizedBox(
      height: 424.v,
      width: 414.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgChristinaWocin424x414,
            height: 424.v,
            width: 414.h,
            alignment: Alignment.center,
          ),
          CustomAppBar(
            leadingWidth: 64.h,
            leading: AppbarLeadingIconbutton(
              margin: EdgeInsets.only(left: 24.h),
            ),
            actions: [
              AppbarTrailingIconbuttonTwo(
                imagePath: ImageConstant.imgFavoriteBorder,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookASession(BuildContext context) {
    return SizedBox(
      height: 68.v,
      width: 414.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 9.v),
              child: Text(
                "Book a session",
                style: CustomTextStyles.titleMediumLatoOnPrimary,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle20,
            height: 68.v,
            width: 414.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
