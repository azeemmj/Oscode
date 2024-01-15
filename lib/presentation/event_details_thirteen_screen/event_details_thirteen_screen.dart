import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';

class EventDetailsThirteenScreen extends StatelessWidget {
  const EventDetailsThirteenScreen({Key? key})
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
            horizontal: 16.h,
            vertical: 24.v,
          ),
          child: Column(
            children: [
              _buildTwentyNine(context),
              SizedBox(height: 21.v),
              _buildFrameThirtyTwo(context),
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
  Widget _buildTwentyNine(BuildContext context) {
    return SizedBox(
      height: 51.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          AnotherStepper(
            iconHeight: 49,
            iconWidth: 110,
            stepperDirection: Axis.horizontal,
            activeIndex: 0,
            barThickness: 1,
            inverted: true,
            stepperList: [
              StepperData(
                iconWidget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSchedule,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6.v),
                      child: Text(
                        "Schedule session",
                        style: CustomTextStyles.bodyMediumBluegray40001,
                      ),
                    ),
                  ],
                ),
              ),
              StepperData(
                iconWidget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPreviewIndigoA20003,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(left: 11.h),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6.v),
                      child: Text(
                        "Review",
                        style: CustomTextStyles
                            .titleSmallAirbnbCerealWMdIndigoA20003,
                      ),
                    ),
                  ],
                ),
              ),
              StepperData(
                iconWidget: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPaymentsBlueGray40001,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.v),
                      child: Text(
                        "Payment",
                        style: CustomTextStyles.bodyMediumBluegray40001,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 51.v,
              width: 57.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameThirtyTwo(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 27.v,
      ),
      decoration: AppDecoration.fillBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: _buildOnline(
              context,
              onlineText: "Type",
              biologyText: "Subject",
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: _buildOnline(
              context,
              onlineText: "Online",
              biologyText: "Biology",
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Session date",
                  style: CustomTextStyles.titleMediumGray90001,
                ),
                Text(
                  "Time",
                  style: CustomTextStyles.titleMediumGray90001,
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: _buildOnline(
              context,
              onlineText: "Fri 24 June",
              biologyText: "1:00pm",
            ),
          ),
          SizedBox(height: 18.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Topic",
              style: CustomTextStyles.titleMediumGray90001,
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Adaption for survival and evolution",
              style: CustomTextStyles.bodyLargeAirbnbCerealWBkGray700,
            ),
          ),
          SizedBox(height: 61.v),
          Text(
            "Edit information",
            style: CustomTextStyles.titleMediumLatoIndigoA2000318,
          ),
          SizedBox(height: 9.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonColor(BuildContext context) {
    return Container(
      height: 30.v,
      width: 206.h,
      margin: EdgeInsets.only(
        left: 100.h,
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
              "Confirm booking".toUpperCase(),
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildOnline(
    BuildContext context, {
    required String onlineText,
    required String biologyText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            onlineText,
            style: CustomTextStyles.bodyLargeAirbnbCerealWBkGray700.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ),
        Text(
          biologyText,
          style: CustomTextStyles.bodyLargeAirbnbCerealWBkGray700.copyWith(
            color: appTheme.gray700,
          ),
        ),
      ],
    );
  }
}
