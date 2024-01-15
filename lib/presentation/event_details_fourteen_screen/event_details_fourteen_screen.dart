import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';

class EventDetailsFourteenScreen extends StatelessWidget {
  const EventDetailsFourteenScreen({Key? key})
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
            horizontal: 19.h,
            vertical: 39.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 18.v),
              _buildEventDetails(context),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(left: 105.h),
                child: Text(
                  "Cancel schedule",
                  style: CustomTextStyles.titleMediumLatoIndigoA20003_1,
                ),
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
        imagePath: ImageConstant.imgArrowDownGray90003,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "Ibrahim Hassan",
        margin: EdgeInsets.only(left: 11.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 9.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEventDetails(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.v),
                            child: CustomIconButton(
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              padding: EdgeInsets.all(8.h),
                              decoration: IconButtonStyleHelper.fillBlue,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgPhone,
                              ),
                            ),
                          ),
                          Container(
                            height: 80.adaptSize,
                            width: 80.adaptSize,
                            margin: EdgeInsets.only(left: 16.h),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgAlexRobinsonR,
                                  height: 80.adaptSize,
                                  width: 80.adaptSize,
                                  radius: BorderRadius.circular(
                                    40.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 80.adaptSize,
                                    width: 80.adaptSize,
                                    decoration:
                                        AppDecoration.fillOrange300.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10,
                                    ),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgImage9180x79,
                                      height: 80.v,
                                      width: 79.h,
                                      radius: BorderRadius.circular(
                                        40.h,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              top: 20.v,
                              bottom: 20.v,
                            ),
                            child: CustomIconButton(
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              padding: EdgeInsets.all(8.h),
                              decoration: IconButtonStyleHelper.fillBlue,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgChat,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 51.v),
                    Text(
                      "Subject",
                      style: CustomTextStyles.titleMediumLatoGray9000118,
                    ),
                    SizedBox(height: 10.v),
                    Text(
                      "Chemistry",
                      style: CustomTextStyles.titleMediumLatoGray700_2,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 21.h,
                  top: 131.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Type",
                        style: CustomTextStyles.titleMediumLatoGray9000118,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      "Online",
                      style: CustomTextStyles.titleMediumLatoGray700_2,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 19.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Topic",
              style: CustomTextStyles.titleMediumLatoGray9000118,
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Solutionbility of substances",
              style: CustomTextStyles.titleMediumLatoGray90001_1,
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Time",
                  style: CustomTextStyles.titleMediumLatoGray9000118,
                ),
                Text(
                  "Date",
                  style: CustomTextStyles.titleMediumLatoGray9000118,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text(
                  "3:00pm",
                  style: CustomTextStyles.titleMediumLatoGray700_2,
                ),
              ),
              Text(
                "Fri 24 June",
                style: CustomTextStyles.titleMediumLatoGray700_2,
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonColor(BuildContext context) {
    return Container(
      height: 30.v,
      width: 183.h,
      margin: EdgeInsets.only(
        left: 123.h,
        right: 69.h,
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
              "Re-schedule".toUpperCase(),
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
