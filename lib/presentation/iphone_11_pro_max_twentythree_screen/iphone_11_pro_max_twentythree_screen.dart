import '../iphone_11_pro_max_twentythree_screen/widgets/userprofile9_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';
import 'package:oscode2/widgets/custom_search_view.dart';

class Iphone11ProMaxTwentythreeScreen extends StatelessWidget {
  Iphone11ProMaxTwentythreeScreen({Key? key})
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
        body: Container(
          width: 414.h,
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 11.h,
                    right: 13.h,
                  ),
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "Search your subject,name",
                    hintStyle: CustomTextStyles.bodyMediumDeeppurple10001,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              SizedBox(height: 28.v),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Padding(
                    padding: EdgeInsets.only(right: 24.h),
                    child: Column(
                      children: [
                        _buildUserProfile(context),
                        SizedBox(height: 24.v),
                        _buildUserProfile1(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
  Widget _buildUserProfile(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomElevatedButton(
          height: 40.v,
          width: 106.h,
          text: "All tutors",
        ),
        CustomElevatedButton(
          height: 40.v,
          width: 149.h,
          text: "Favorite tutors",
          margin: EdgeInsets.only(left: 110.h),
          buttonStyle: CustomButtonStyles.fillBlueTL8,
          buttonTextStyle: CustomTextStyles.titleMediumLatoIndigoA2000318,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfile1(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 189.v,
          crossAxisCount: 2,
          mainAxisSpacing: 16.h,
          crossAxisSpacing: 16.h,
        ),
        physics: BouncingScrollPhysics(),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Userprofile9ItemWidget();
        },
      ),
    );
  }
}
