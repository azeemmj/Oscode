import '../iphone_11_pro_max_twentyfour_screen/widgets/userprofile10_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';
import 'package:oscode2/widgets/custom_search_view.dart';

class Iphone11ProMaxTwentyfourScreen extends StatelessWidget {
  Iphone11ProMaxTwentyfourScreen({Key? key})
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
            child: _buildUpcomingSession(context),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 72.v,
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgClose,
          margin: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 8.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUpcomingSession(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 23.h,
        bottom: 5.v,
      ),
      child: Column(
        children: [
          CustomSearchView(
            controller: searchController,
            hintText: "Search your subject,name",
            hintStyle: CustomTextStyles.bodyMediumDeeppurple10001,
          ),
          SizedBox(height: 32.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomElevatedButton(
                  height: 40.v,
                  width: 175.h,
                  text: "Upcoming session",
                ),
                CustomElevatedButton(
                  height: 40.v,
                  width: 159.h,
                  text: "Pending session",
                  buttonStyle: CustomButtonStyles.fillBlueTL8,
                  buttonTextStyle:
                      CustomTextStyles.titleMediumLatoIndigoA2000318,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          SizedBox(
            height: 170.v,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 1.h),
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
                return Userprofile10ItemWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
