import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_search_view.dart';

class Iphone11ProMaxTwentyfiveScreen extends StatelessWidget {
  Iphone11ProMaxTwentyfiveScreen({Key? key})
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
            child: _buildSearchView(context),
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
  Widget _buildSearchView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.v),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              right: 25.h,
            ),
            child: CustomSearchView(
              controller: searchController,
              hintText: "Search your subject,name",
            ),
          ),
          SizedBox(height: 32.v),
          Container(
            padding: EdgeInsets.fromLTRB(24.h, 15.v, 24.h, 13.v),
            decoration: AppDecoration.outlineDeepPurple,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgClose,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  margin: EdgeInsets.only(
                    top: 4.v,
                    bottom: 2.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 4.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chinyere Njoku",
                        style: CustomTextStyles.titleMediumLatoGray90001_1,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "Can you please send a direction....",
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Column(
                    children: [
                      Text(
                        "11:20am",
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 4.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 24.adaptSize,
                          padding: EdgeInsets.symmetric(
                            horizontal: 7.h,
                            vertical: 3.v,
                          ),
                          decoration: AppDecoration.fillRed.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Text(
                            "2",
                            style: CustomTextStyles.titleSmallPrimary,
                          ),
                        ),
                      ),
                    ],
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
