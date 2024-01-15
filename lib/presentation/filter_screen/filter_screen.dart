import '../filter_screen/widgets/today_item_widget.dart';
import '../filter_screen/widgets/viewhierarchy_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';
import 'package:oscode2/widgets/custom_outlined_button.dart';
import 'package:oscode2/widgets/custom_radio_button.dart';

class FilterScreen extends StatelessWidget {
  FilterScreen({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeUtils.height,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(left: 1.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 13.h,
                            vertical: 22.v,
                          ),
                          decoration: AppDecoration.fillOnPrimaryContainer,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 36.v),
                              Opacity(
                                opacity: 0.50262743,
                                child: Container(
                                  height: 732.v,
                                  width: 347.h,
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.primary
                                        .withOpacity(0.53),
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(38.h),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 174.h,
                            vertical: 12.v,
                          ),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL38,
                          ),
                          child: Container(
                            height: 5.v,
                            width: 26.h,
                            decoration: BoxDecoration(
                              color: appTheme.gray4007f,
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                            ),
                          ),
                        ),
                      ),
                      _buildResetButtons(context),
                      _buildFilter(context),
                    ],
                  ),
                ),
                SizedBox(height: 78.v),
                _buildMinOptions(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildResetButtons(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 18.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomOutlinedButton(
              height: 58.v,
              width: 130.h,
              text: "Reset".toUpperCase(),
              buttonStyle: CustomButtonStyles.outlineGray,
              buttonTextStyle: CustomTextStyles.titleMediumGray90003_4,
            ),
            CustomElevatedButton(
              height: 58.v,
              width: 185.h,
              text: "Apply".toUpperCase(),
              margin: EdgeInsets.only(left: 19.h),
              buttonStyle: CustomButtonStyles.fillIndigoA,
              buttonTextStyle: theme.textTheme.titleMedium!,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFilterOptions(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Filter",
          style: CustomTextStyles.headlineSmallAirbnbCerealWBkBlack900,
        ),
        SizedBox(height: 20.v),
        SizedBox(
          height: 98.v,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 18.h,
              );
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return ViewhierarchyItemWidget();
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTimeDateOptions(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Time & Date",
          style: CustomTextStyles.titleMediumGray90003_2,
        ),
        SizedBox(height: 18.v),
        Wrap(
          runSpacing: 12.v,
          spacing: 12.h,
          children: List<Widget>.generate(4, (index) => TodayItemWidget()),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLocationOptions(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Location",
          style: CustomTextStyles.titleMediumGray90003_2,
        ),
        SizedBox(height: 18.v),
        Container(
          margin: EdgeInsets.only(right: 21.h),
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.outlineGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUserIndigoA20003,
                height: 45.adaptSize,
                width: 45.adaptSize,
                margin: EdgeInsets.only(top: 1.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.h,
                  top: 14.v,
                  bottom: 10.v,
                ),
                child: Text(
                  "Pune, India",
                  style:
                      CustomTextStyles.bodyLargeAirbnbCerealWBkOnErrorContainer,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRightIndigoA200039x4,
                height: 9.v,
                width: 4.h,
                margin: EdgeInsets.fromLTRB(161.h, 18.v, 10.h, 19.v),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPriceRangeOptions(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 21.h),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 3.v),
                child: Text(
                  "Select price range",
                  style: CustomTextStyles.titleMediumGray90003_2,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 119.h),
                child: Text(
                  "20-120",
                  style: CustomTextStyles.bodyLargeAirbnbCerealWBkIndigoA700,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 19.v),
        CustomImageView(
          imagePath: ImageConstant.imgGroup18302,
          height: 66.v,
          width: 333.h,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFilter(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildFilterOptions(context),
          SizedBox(height: 32.v),
          _buildTimeDateOptions(context),
          SizedBox(height: 32.v),
          _buildLocationOptions(context),
          SizedBox(height: 28.v),
          _buildPriceRangeOptions(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMinOptions(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 23.h),
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle,
            height: 92.adaptSize,
            width: 92.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              right: 2.h,
              bottom: 1.v,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 205.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "10 June •\r9:00 PM",
                        style: CustomTextStyles
                            .labelLargeAirbnbCerealWMdIndigoA700Medium,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgBookmarkBlack900,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(top: 3.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.v),
                SizedBox(
                  width: 203.h,
                  child: Text(
                    "International Gala Music Festival",
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                ),
                SizedBox(height: 9.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CustomRadioButton(
                    text: "36 Guild Street London, UK  ",
                    value: "36 Guild Street London, UK  ",
                    groupValue: radioGroup,
                    textStyle: CustomTextStyles.bodyMediumGray50003,
                    onChange: (value) {
                      radioGroup = value;
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
