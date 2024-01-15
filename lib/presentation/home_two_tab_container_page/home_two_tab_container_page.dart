import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/presentation/home_three_page/home_three_page.dart';
import 'package:oscode2/presentation/home_two_page/home_two_page.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:oscode2/widgets/app_bar/appbar_title_dropdown.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';
import 'package:oscode2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HomeTwoTabContainerPage extends StatefulWidget {
  const HomeTwoTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeTwoTabContainerPageState createState() => HomeTwoTabContainerPageState();
}

class HomeTwoTabContainerPageState extends State<HomeTwoTabContainerPage>
    with TickerProviderStateMixin {
  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController editTextController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

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
              SizedBox(height: 28.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildTabview(context),
                      SizedBox(
                        height: 456.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            HomeTwoPage(),
                            HomeThreePage(),
                            HomeThreePage(),
                          ],
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
                              bottom: 2.v,
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
                  SizedBox(height: 46.v),
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
                  margin: EdgeInsets.only(left: 12.h),
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
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 44.v,
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.indigoA20003.withOpacity(0.65),
        labelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'AirbnbCereal_W_Md',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.blueGray40001.withOpacity(0.65),
        unselectedLabelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'AirbnbCereal_W_Md',
          fontWeight: FontWeight.w500,
        ),
        indicator: BoxDecoration(
          color: appTheme.blue50,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(11.h),
          ),
        ),
        tabs: [
          Tab(
            child: Opacity(
              opacity: 0.84,
              child: Text(
                "All Tutors",
              ),
            ),
          ),
          Tab(
            child: Opacity(
              opacity: 0.84,
              child: Text(
                "Favorite tutors",
              ),
            ),
          ),
          Tab(
            child: Opacity(
              opacity: 0.84,
              child: Text(
                "Upcoming session",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
