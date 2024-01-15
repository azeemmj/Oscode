import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/presentation/frame_page/frame_page.dart';
import 'package:oscode2/presentation/home_page/home_page.dart';
import 'package:oscode2/presentation/home_two_tab_container_page/home_two_tab_container_page.dart';
import 'package:oscode2/presentation/see_all_events_one_page/see_all_events_one_page.dart';
import 'package:oscode2/presentation/see_all_events_two_page/see_all_events_two_page.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:oscode2/widgets/app_bar/appbar_title_dropdown.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_bottom_bar.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';
import 'package:oscode2/widgets/custom_radio_button.dart';
import 'package:oscode2/widgets/custom_text_form_field.dart';

class HomeFiveScreen extends StatelessWidget {
  HomeFiveScreen({Key? key})
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

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildFiltersStack(context),
              SizedBox(height: 27.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildPendingSessionRow(context),
                      Container(
                        padding: EdgeInsets.all(10.h),
                        decoration: AppDecoration.fillBlue,
                        child: Container(
                          margin: EdgeInsets.only(right: 182.h),
                          padding: EdgeInsets.all(9.h),
                          decoration: AppDecoration.outlineBlueGrayF.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder19,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                color: appTheme.orange300,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Container(
                                  height: 131.v,
                                  width: 155.h,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 9.h),
                                  decoration:
                                      AppDecoration.fillOrange300.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage91,
                                        height: 131.v,
                                        width: 132.h,
                                        radius: BorderRadius.circular(
                                          10.h,
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 8.v),
                                        child: CustomIconButton(
                                          height: 30.adaptSize,
                                          width: 30.adaptSize,
                                          padding: EdgeInsets.all(7.h),
                                          decoration:
                                              IconButtonStyleHelper.fillPrimary,
                                          alignment: Alignment.topRight,
                                          child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgUserRed40001,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 13.v),
                              Container(
                                height: 85.v,
                                width: 129.h,
                                margin: EdgeInsets.only(left: 7.h),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: 36.v,
                                          right: 7.h,
                                          bottom: 32.v,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "1:00pm",
                                              style: theme.textTheme.titleSmall,
                                            ),
                                            Text(
                                              "Fri 24 june",
                                              style: theme.textTheme.titleSmall,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Ibrahim Hassan",
                                            style: CustomTextStyles
                                                .titleMediumBlack90018,
                                          ),
                                          SizedBox(height: 43.v),
                                          _buildMin(context),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 7.v),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 55.v),
                      _buildHomeRow(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
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
                    horizontal: 9.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineBlueGrayE.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder19,
                  ),
                  child: Text(
                    "Technology",
                    style: CustomTextStyles.bodyMediumPrimary15,
                  ),
                ),
                Container(
                  width: 100.h,
                  margin: EdgeInsets.only(left: 11.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineBluegray9001e.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder19,
                  ),
                  child: Text(
                    "Design",
                    style: CustomTextStyles.bodyMediumPrimary15,
                  ),
                ),
                Container(
                  width: 95.h,
                  margin: EdgeInsets.only(left: 11.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 11.h,
                    vertical: 8.v,
                  ),
                  decoration: AppDecoration.outlineBluegray9001e1.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder19,
                  ),
                  child: Text(
                    "Marketing",
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
  Widget _buildPendingSessionRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Opacity(
              opacity: 0.84,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 12.v,
                  bottom: 7.v,
                ),
                child: Text(
                  "Upcoming session",
                  style: CustomTextStyles.titleMediumBluegray40001,
                ),
              ),
            ),
            CustomElevatedButton(
              height: 44.v,
              width: 177.h,
              text: "Pending session",
              margin: EdgeInsets.only(left: 19.h),
              buttonStyle: CustomButtonStyles.fillBlue,
              buttonTextStyle: CustomTextStyles.titleMediumLatoIndigoA20003,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMin(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: CustomRadioButton(
        text: "Pune, India",
        value: "Pune, India",
        groupValue: radioGroup,
        textStyle: CustomTextStyles.bodyMediumBluegray90001,
        onChange: (value) {
          radioGroup = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
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

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Explore:
        return AppRoutes.homePage;
      case BottomBarEnum.Events:
        return AppRoutes.seeAllEventsTwoPage;
      case BottomBarEnum.Mentor:
        return AppRoutes.homeTwoTabContainerPage;
      case BottomBarEnum.Podcast:
        return AppRoutes.seeAllEventsOnePage;
      case BottomBarEnum.Profile:
        return AppRoutes.framePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.seeAllEventsTwoPage:
        return SeeAllEventsTwoPage();
      case AppRoutes.homeTwoTabContainerPage:
        return HomeTwoTabContainerPage();
      case AppRoutes.seeAllEventsOnePage:
        return SeeAllEventsOnePage();
      case AppRoutes.framePage:
        return FramePage();
      default:
        return DefaultWidget();
    }
  }
}
