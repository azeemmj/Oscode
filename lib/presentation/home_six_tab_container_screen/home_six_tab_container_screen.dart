import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/presentation/frame_page/frame_page.dart';
import 'package:oscode2/presentation/home_page/home_page.dart';
import 'package:oscode2/presentation/home_six_page/home_six_page.dart';
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

class HomeSixTabContainerScreen extends StatefulWidget {
  const HomeSixTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeSixTabContainerScreenState createState() =>
      HomeSixTabContainerScreenState();
}

class HomeSixTabContainerScreenState extends State<HomeSixTabContainerScreen>
    with TickerProviderStateMixin {
  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildFiltersStack(context),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 1525.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        HomeSixPage(),
                        HomeSixPage(),
                        HomeSixPage(),
                      ],
                    ),
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
          SizedBox(
            height: 39.v,
            width: 351.h,
            child: TabBar(
              controller: tabviewController,
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    "Technology",
                  ),
                ),
                Tab(
                  child: Text(
                    "Design",
                  ),
                ),
                Tab(
                  child: Text(
                    "Marketing",
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
