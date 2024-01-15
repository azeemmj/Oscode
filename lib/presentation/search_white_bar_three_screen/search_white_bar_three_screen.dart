import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';

class SearchWhiteBarThreeScreen extends StatelessWidget {
  const SearchWhiteBarThreeScreen({Key? key})
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
            horizontal: 21.h,
            vertical: 14.v,
          ),
          child: Column(
            children: [
              _buildCard1(context),
              SizedBox(height: 19.v),
              _buildFrameColumn(context),
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
        text: "Detail order",
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildCard1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 6.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBluegray60011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            color: appTheme.orange200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 115.v,
              width: 295.h,
              decoration: AppDecoration.fillOrange.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage81115x295,
                    height: 115.v,
                    width: 295.h,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 115.v,
                      width: 295.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage85115x295,
                            height: 115.v,
                            width: 295.h,
                            radius: BorderRadius.circular(
                              10.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 115.v,
                              width: 295.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage86115x295,
                                    height: 115.v,
                                    width: 295.h,
                                    radius: BorderRadius.circular(
                                      10.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage77115x295,
                                    height: 115.v,
                                    width: 295.h,
                                    radius: BorderRadius.circular(
                                      10.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
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
          SizedBox(height: 11.v),
          Text(
            "International Band Music Concert",
            style: CustomTextStyles.titleMediumGray90003,
          ),
          SizedBox(height: 7.v),
          Text(
            "Duration 3 hours",
            style: CustomTextStyles.labelLargeAirbnbCerealWMdBluegray40001,
          ),
          SizedBox(height: 7.v),
          Text(
            "14th  DEC | Sat | 4:00 PM\r-7:00 pm".toUpperCase(),
            style: CustomTextStyles.labelLargeAirbnbCerealWMdBluegray40001,
          ),
          SizedBox(height: 7.v),
          Text(
            "Gala Convention Center, 36 Guild Street Pune, India",
            style: CustomTextStyles.labelLargeAirbnbCerealWMdBluegray40001,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 6.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineBluegray60011,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Order Summary",
              style: CustomTextStyles.titleMediumGray90003,
            ),
          ),
          SizedBox(height: 19.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6.v),
                child: Text(
                  "ticket price for 1 person",
                  style:
                      CustomTextStyles.titleSmallAirbnbCerealWMdBluegray40001,
                ),
              ),
              Spacer(),
              CustomIconButton(
                height: 32.adaptSize,
                width: 32.adaptSize,
                padding: EdgeInsets.all(6.h),
                decoration: IconButtonStyleHelper.outlineIndigoA,
                child: CustomImageView(
                  imagePath: ImageConstant.imgFrame,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 5.v,
                  bottom: 5.v,
                ),
                child: Text(
                  "1",
                  style: CustomTextStyles.titleSmallPoppinsBlack900,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 13.h),
                child: CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  decoration: IconButtonStyleHelper.fillIndigoATL16,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGrid,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          _buildFrameRow(
            context,
            taxLabel: "Ticket price",
            priceLabel: "₹108",
          ),
          SizedBox(height: 6.v),
          _buildFrameRow(
            context,
            taxLabel: "TAX",
            priceLabel: "₹12",
          ),
          SizedBox(height: 6.v),
          _buildFrameRow(
            context,
            taxLabel: "Ticket price",
            priceLabel: "₹120",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonColor(BuildContext context) {
    return Container(
      height: 30.v,
      width: 196.h,
      margin: EdgeInsets.only(
        left: 113.h,
        right: 66.h,
        bottom: 34.v,
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
              "Buy Ticket 120".toUpperCase(),
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameRow(
    BuildContext context, {
    required String taxLabel,
    required String priceLabel,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          taxLabel,
          style: CustomTextStyles.labelLargeAirbnbCerealWMd.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Text(
          priceLabel,
          style: CustomTextStyles.labelLargeAirbnbCerealWMd.copyWith(
            color: appTheme.gray900,
          ),
        ),
      ],
    );
  }
}
