import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';

class Iphone11ProMaxEighteenScreen extends StatelessWidget {
  const Iphone11ProMaxEighteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 414.h,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildScrollView(context),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildConfirmBooking(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 64.v,
      leadingWidth: 414.h,
      leading: AppbarLeadingIconbutton(
        margin: EdgeInsets.fromLTRB(24.h, 8.v, 350.h, 8.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return Container(
      height: 48.v,
      width: 365.h,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 5.v,
      ),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgScheduleDeepPurple10001,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                SizedBox(height: 7.v),
                Text(
                  "Schedule session",
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 135.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPreviewIndigoA20003,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "Review",
                    style: CustomTextStyles.titleSmallGray90001_1,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPaymentsDeepPurple10001,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                SizedBox(height: 5.v),
                Text(
                  "Payment",
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 16.v),
              child: SizedBox(
                width: 197.h,
                child: Divider(
                  color: appTheme.deepPurple200,
                  indent: 66.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 14.v),
              child: SizedBox(
                width: 144.h,
                child: Divider(
                  color: appTheme.deepPurple200,
                  endIndent: 38.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmBooking(BuildContext context) {
    return SizedBox(
      height: 72.v,
      width: 414.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle2068x414,
            height: 68.v,
            width: 414.h,
            alignment: Alignment.bottomCenter,
          ),
          CustomElevatedButton(
            height: 48.v,
            width: 366.h,
            text: "Confirm booking",
            buttonStyle: CustomButtonStyles.fillIndigoA,
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}
