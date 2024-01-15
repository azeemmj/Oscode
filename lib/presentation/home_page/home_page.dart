import '../home_page/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:oscode2/widgets/app_bar/appbar_title_dropdown.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';
import 'package:oscode2/widgets/custom_radio_button.dart';
import 'package:oscode2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController editTextController = TextEditingController();

  String radioGroup = "";

  String radioGroup1 = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              _buildFiltersStack(context),
              SizedBox(height: 27.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildPopularColumn(context),
                        SizedBox(height: 29.v),
                        _buildInviteStack(context),
                        SizedBox(height: 30.v),
                        Padding(
                          padding: EdgeInsets.only(right: 24.h),
                          child: _buildPopularRow(
                            context,
                            text: "Nearby You",
                            allCopy: "See All",
                          ),
                        ),
                        SizedBox(height: 13.v),
                        _buildMinRow(context),
                        SizedBox(height: 14.v),
                        _buildMinRow1(context),
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
  Widget _buildFiltersStack(BuildContext context) {
    return SizedBox(
      height: 153.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              decoration: AppDecoration.fillIndigoA40001.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL33,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomAppBar(
                    height: 36.v,
                    leadingWidth: 48.h,
                    leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgCombinedShape2,
                      margin: EdgeInsets.only(
                        left: 24.h,
                        top: 8.v,
                        bottom: 9.v,
                      ),
                    ),
                    centerTitle: true,
                    title: Column(
                      children: [
                        AppbarTitleDropdown(
                          hintText: "Current Location",
                          items: dropdownItemList,
                          onTap: (value) {},
                        ),
                        SizedBox(height: 3.v),
                        AppbarSubtitleFour(
                          text: "Pune, India",
                          margin: EdgeInsets.only(
                            left: 19.h,
                            right: 21.h,
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      AppbarTrailingIconbutton(
                        imagePath: ImageConstant.imgProfilePrimary,
                        margin: EdgeInsets.symmetric(horizontal: 24.h),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSearchPrimary,
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
                              indent: 6.h,
                              endIndent: 6.h,
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.3,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 6.h,
                              top: 2.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "Search...",
                              style: CustomTextStyles
                                  .titleLargeAirbnbCerealWBkPrimary,
                            ),
                          ),
                        ),
                        Spacer(),
                        CustomElevatedButton(
                          width: 75.h,
                          text: "Filters",
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 3.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup18240Indigo200,
                              height: 23.adaptSize,
                              width: 23.adaptSize,
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.fillIndigoATL16,
                          buttonTextStyle: CustomTextStyles.bodySmallPrimary,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 45.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 106.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 22.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.outlineBlueGrayE.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder19,
                  ),
                  child: Text(
                    "seminars",
                    style: CustomTextStyles.bodyMediumPrimary15,
                  ),
                ),
                Container(
                  width: 100.h,
                  margin: EdgeInsets.only(left: 11.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 8.v,
                  ),
                  decoration: AppDecoration.outlineBluegray9001e.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder19,
                  ),
                  child: Text(
                    "workshop",
                    style: CustomTextStyles.bodyMediumPrimary15,
                  ),
                ),
                Container(
                  width: 95.h,
                  margin: EdgeInsets.only(left: 11.h),
                  padding: EdgeInsets.all(9.h),
                  decoration: AppDecoration.outlineBluegray9001e1.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder19,
                  ),
                  child: Text(
                    "hackathon",
                    style: CustomTextStyles.bodyMediumPrimary15,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: CustomTextFormField(
                    width: 14.h,
                    controller: editTextController,
                    textInputAction: TextInputAction.done,
                    borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayE,
                    fillColor: appTheme.lightBlueA20001,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPopularColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 24.h),
          child: _buildPopularRow(
            context,
            text: "Upcoming Events",
            allCopy: "See All",
          ),
        ),
        SizedBox(height: 13.v),
        SizedBox(
          height: 255.v,
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
              return UserprofileItemWidget();
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInviteStack(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: appTheme.cyanA400.withOpacity(0.16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        height: 127.v,
        width: 328.h,
        decoration: AppDecoration.fillCyanA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img77mlihf8tw1,
              height: 127.v,
              width: 212.h,
              radius: BorderRadius.circular(
                12.h,
              ),
              alignment: Alignment.centerRight,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Invite your friends",
                      style: CustomTextStyles.titleMediumGray90003,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "Get 20 for ticket",
                      style: CustomTextStyles.bodyMediumBluegray700,
                    ),
                    SizedBox(height: 12.v),
                    CustomElevatedButton(
                      width: 72.h,
                      text: "Invite".toUpperCase(),
                      buttonStyle: CustomButtonStyles.fillCyanA,
                      buttonTextStyle: CustomTextStyles
                          .labelLargeAirbnbCerealWMdPrimaryMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMinRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24.h),
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 92.v,
            width: 79.h,
            decoration: AppDecoration.fillOrange.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage80,
              height: 92.v,
              width: 79.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 4.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1st  May- Sat -2:00 PM\r".toUpperCase(),
                  style: CustomTextStyles.labelLargeAirbnbCerealWMdIndigoA20003,
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 142.h,
                  child: Text(
                    "Women's leadership conference",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallAirbnbCerealWMdGray90003,
                  ),
                ),
                SizedBox(height: 7.v),
                CustomRadioButton(
                  text: "Radius Gallery • Santa Cruz",
                  value: "Radius Gallery • Santa Cruz",
                  groupValue: radioGroup,
                  onChange: (value) {
                    radioGroup = value;
                  },
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBookmarkRed4000116x16,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.fromLTRB(10.h, 4.v, 3.h, 72.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMinRow1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24.h),
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 92.v,
            width: 79.h,
            decoration: AppDecoration.fillOrange.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage88,
              height: 92.v,
              width: 79.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 5.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1st  May- Sat -2:00 PM\r".toUpperCase(),
                  style: CustomTextStyles.labelLargeAirbnbCerealWMdIndigoA20003,
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 191.h,
                  child: Text(
                    "International kids safe parents night out",
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallAirbnbCerealWMdGray90003,
                  ),
                ),
                SizedBox(height: 7.v),
                CustomRadioButton(
                  text: "Radius Gallery • Santa Cruz",
                  value: "Radius Gallery • Santa Cruz",
                  groupValue: radioGroup1,
                  onChange: (value) {
                    radioGroup1 = value;
                  },
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBookmarkSecondarycontainer,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              right: 3.h,
              bottom: 72.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPopularRow(
    BuildContext context, {
    required String text,
    required String allCopy,
  }) {
    return Row(
      children: [
        Opacity(
          opacity: 0.84,
          child: Text(
            text,
            style: CustomTextStyles.titleMediumGray9000318.copyWith(
              color: appTheme.gray90003.withOpacity(0.65),
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: Text(
            allCopy,
            style: CustomTextStyles.bodyMediumGray600.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: CustomImageView(
            imagePath: ImageConstant.imgVector1,
            height: 9.v,
            width: 6.h,
            radius: BorderRadius.circular(
              1.h,
            ),
            margin: EdgeInsets.only(
              left: 5.h,
              top: 7.v,
              bottom: 7.v,
            ),
          ),
        ),
      ],
    );
  }
}
