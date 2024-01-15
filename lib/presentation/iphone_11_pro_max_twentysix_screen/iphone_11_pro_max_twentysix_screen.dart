import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_iconbutton_three.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';

class Iphone11ProMaxTwentysixScreen extends StatelessWidget {
  const Iphone11ProMaxTwentysixScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        appBar: _buildAppBar(context),
        body: Container(
          width: 414.h,
          padding: EdgeInsets.symmetric(vertical: 40.v),
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildIPhone11ProMax(context),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildActionRow(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 72.v,
      leadingWidth: 64.h,
      leading: AppbarLeadingIconbutton(
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "Chinyere Njoku",
      ),
      actions: [
        AppbarTrailingIconbuttonThree(
          imagePath: ImageConstant.imgPhone,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 8.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildIPhone11ProMax(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 5.v,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "Wed 22 June",
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 16.v),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 266.h,
              margin: EdgeInsets.only(left: 100.h),
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.fillIndigoA.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  Container(
                    width: 211.h,
                    margin: EdgeInsets.only(right: 22.h),
                    child: Text(
                      "Hello, I will like to tell you that you can message me about anything",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallPrimary.copyWith(
                        height: 1.29,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(right: 44.h),
            child: _buildTodayRow(
              context,
              messageText:
                  "Thank you for reaching out to me, i will let you know if i need any information",
            ),
          ),
          SizedBox(height: 17.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Today",
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(right: 44.h),
            child: _buildTodayRow(
              context,
              messageText:
                  "Can you please send a detailed direction to your house from Oshodi",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildActionRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 28.h,
        bottom: 40.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.v),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillBlue,
              child: CustomImageView(
                imagePath: ImageConstant.imgAttachFile,
              ),
            ),
          ),
          Container(
            height: 48.v,
            width: 250.h,
            margin: EdgeInsets.only(left: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                16.h,
              ),
              border: Border.all(
                color: appTheme.deepPurple10001,
                width: 2.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 4.v,
              bottom: 4.v,
            ),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillBlue,
              child: CustomImageView(
                imagePath: ImageConstant.imgSend,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTodayRow(
    BuildContext context, {
    required String messageText,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 40.adaptSize,
          width: 40.adaptSize,
          margin: EdgeInsets.only(
            top: 23.v,
            bottom: 5.v,
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 16.h),
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.fillBlue.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL241,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                Container(
                  width: 223.h,
                  margin: EdgeInsets.only(right: 10.h),
                  child: Text(
                    messageText,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallBlack900.copyWith(
                      color: appTheme.black900,
                      height: 1.29,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
