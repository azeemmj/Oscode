import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';

class Iphone11ProMaxThirtyfourScreen extends StatelessWidget {
  const Iphone11ProMaxThirtyfourScreen({Key? key})
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
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 24.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 23.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgAlexStarnesWy,
                            height: 96.adaptSize,
                            width: 96.adaptSize,
                            radius: BorderRadius.circular(
                              48.h,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              top: 18.v,
                              bottom: 18.v,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "Damilola John",
                                  style: CustomTextStyles
                                      .headlineSmallLatoBlack900,
                                ),
                                SizedBox(height: 10.v),
                                Text(
                                  "High school student",
                                  style:
                                      CustomTextStyles.titleMediumLatoGray700_2,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  CustomElevatedButton(
                    height: 40.v,
                    width: 119.h,
                    text: "Edit Profile",
                    margin: EdgeInsets.only(right: 24.h),
                    alignment: Alignment.centerRight,
                  ),
                  SizedBox(height: 32.v),
                  _buildCardDetails(
                    context,
                    creditCardImage: ImageConstant.imgAccountCircle,
                    cardDetailsText: "Account",
                    arrowRightImage: ImageConstant.imgArrowRightIndigoA20003,
                  ),
                  SizedBox(height: 16.v),
                  _buildCardDetails(
                    context,
                    creditCardImage: ImageConstant.imgCreditCard,
                    cardDetailsText: "Card details",
                    arrowRightImage: ImageConstant.imgArrowRightIndigoA20003,
                  ),
                  SizedBox(height: 16.v),
                  _buildCardDetails(
                    context,
                    creditCardImage: ImageConstant.imgNotificationsNone,
                    cardDetailsText: "Manage notifications",
                    arrowRightImage: ImageConstant.imgArrowRightIndigoA20003,
                  ),
                  SizedBox(height: 16.v),
                  _buildCardDetails(
                    context,
                    creditCardImage: ImageConstant.imgSearchIndigoA2000324x24,
                    cardDetailsText: "Settings",
                    arrowRightImage: ImageConstant.imgArrowRightIndigoA20003,
                  ),
                  SizedBox(height: 16.v),
                  _buildCardDetails(
                    context,
                    creditCardImage: ImageConstant.imgPrivacyTip,
                    cardDetailsText: "Privacy policy",
                    arrowRightImage: ImageConstant.imgArrowRightIndigoA20003,
                  ),
                  SizedBox(height: 16.v),
                  _buildCardDetails(
                    context,
                    creditCardImage: ImageConstant.imgPowerSettingsNew,
                    cardDetailsText: "Logout",
                    arrowRightImage: ImageConstant.imgArrowRightPink300,
                  ),
                ],
              ),
            ),
          ),
        ),
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
      title: AppbarSubtitleOne(
        text: "Profile",
      ),
    );
  }

  /// Common widget
  Widget _buildCardDetails(
    BuildContext context, {
    required String creditCardImage,
    required String cardDetailsText,
    required String arrowRightImage,
  }) {
    return Container(
      padding: EdgeInsets.fromLTRB(24.h, 16.v, 24.h, 14.v),
      decoration: AppDecoration.outlineBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: AppDecoration.fillBlue.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder19,
            ),
            child: CustomImageView(
              imagePath: creditCardImage,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 10.v,
              bottom: 7.v,
            ),
            child: Text(
              cardDetailsText,
              style: CustomTextStyles.titleMediumLatoGray9000118.copyWith(
                color: appTheme.gray90001,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: arrowRightImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 8.v),
          ),
        ],
      ),
    );
  }
}
