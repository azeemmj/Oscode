import '../search_white_bar_four_screen/widgets/cardlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';

class SearchWhiteBarFourScreen extends StatelessWidget {
  const SearchWhiteBarFourScreen({Key? key})
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
            vertical: 17.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 7.v),
              _buildFilters(context),
              SizedBox(height: 28.v),
              _buildCardList(context),
            ],
          ),
        ),
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
        text: "Search",
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildFilters(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSearchIndigoA20003,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: SizedBox(
              height: 32.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
                color: theme.colorScheme.onSecondaryContainer,
                indent: 4.h,
                endIndent: 2.h,
              ),
            ),
          ),
          Opacity(
            opacity: 0.3,
            child: Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                top: 1.v,
              ),
              child: Text(
                "Search...",
                style: CustomTextStyles.headlineSmallAirbnbCerealWLtBlack900,
              ),
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            width: 75.h,
            text: "Filters",
            leftIcon: Container(
              margin: EdgeInsets.only(right: 5.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup18240,
                height: 23.adaptSize,
                width: 23.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillIndigoA,
            buttonTextStyle: CustomTextStyles.bodySmallDeeppurple50,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCardList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 16.v,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return CardlistItemWidget();
        },
      ),
    );
  }
}
