import '../iphone_11_pro_max_fifteen_screen/widgets/userprofile7_item_widget.dart';
import '../iphone_11_pro_max_fifteen_screen/widgets/userprofile8_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';
import 'package:oscode2/widgets/custom_search_view.dart';

class Iphone11ProMaxFifteenScreen extends StatelessWidget {
  Iphone11ProMaxFifteenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 16.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                right: 24.h,
                bottom: 8.v,
              ),
              child: Column(
                children: [
                  CustomSearchView(
                    controller: searchController,
                    hintText: "Search your subject,name",
                  ),
                  SizedBox(height: 32.v),
                  _buildFrameFifteen(context),
                  SizedBox(height: 34.v),
                  _buildTopTutors(context),
                  SizedBox(height: 34.v),
                  _buildRecommendedFor(context),
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
      height: 80.v,
      title: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Welcome",
                style: CustomTextStyles.titleMediumLatoGray700_1,
              ),
              TextSpan(
                text: " Damilola",
                style: CustomTextStyles.titleMediumLatoGray90001_2,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgClose,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 8.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameFifteen(BuildContext context) {
    return Container(
      width: 366.h,
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillIndigoA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "Find the right tutor for you",
              style: CustomTextStyles.titleMediumLatoGray5001,
            ),
          ),
          SizedBox(height: 7.v),
          SizedBox(
            width: 206.h,
            child: Text(
              "Ace your test and examination by getting the knowledge needed",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallGray5001.copyWith(
                height: 1.29,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          CustomElevatedButton(
            height: 34.v,
            width: 127.h,
            text: "Find tutor",
            margin: EdgeInsets.only(left: 2.h),
            buttonStyle: CustomButtonStyles.fillGrayTL16,
            buttonTextStyle: CustomTextStyles.titleSmallIndigoA20003,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTopTutors(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top tutors",
                style: CustomTextStyles.titleLargeLatoGray90001,
              ),
              Padding(
                padding: EdgeInsets.only(top: 7.v),
                child: Text(
                  "See all",
                  style: CustomTextStyles.labelLargeLatoIndigoA20003,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 13.v),
        SizedBox(
          height: 188.v,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return Userprofile7ItemWidget();
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRecommendedFor(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recommended for you",
          style: CustomTextStyles.titleLargeLatoGray90001,
        ),
        SizedBox(height: 13.v),
        SizedBox(
          height: 188.v,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return Userprofile8ItemWidget();
            },
          ),
        ),
      ],
    );
  }
}
