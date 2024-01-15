import '../my_profile_screen/widgets/gamesonline2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/presentation/frame_page/frame_page.dart';
import 'package:oscode2/presentation/home_page/home_page.dart';
import 'package:oscode2/presentation/home_two_tab_container_page/home_two_tab_container_page.dart';
import 'package:oscode2/presentation/see_all_events_one_page/see_all_events_one_page.dart';
import 'package:oscode2/presentation/see_all_events_two_page/see_all_events_two_page.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_bottom_bar.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';
import 'package:oscode2/widgets/custom_outlined_button.dart';
import 'package:readmore/readmore.dart';

class MyProfileScreen extends StatelessWidget {
  MyProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup122,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 24.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage89,
                  height: 96.adaptSize,
                  width: 96.adaptSize,
                  radius: BorderRadius.circular(
                    48.h,
                  ),
                ),
                SizedBox(height: 19.v),
                Text(
                  "Anubhav Dwivedi",
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 19.v),
                CustomOutlinedButton(
                  height: 50.v,
                  width: 154.h,
                  text: "Edit Profile",
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 16.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup33562,
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.outlineIndigoA,
                  buttonTextStyle:
                      CustomTextStyles.bodyLargeAirbnbCerealWBkIndigoA20003,
                ),
                SizedBox(height: 33.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Opacity(
                    opacity: 0.84,
                    child: Text(
                      "About Me",
                      style: CustomTextStyles.titleMediumGray9000318,
                    ),
                  ),
                ),
                SizedBox(height: 17.v),
                _buildTheDevelopment(context),
                SizedBox(height: 18.v),
                _buildChange(context),
                SizedBox(height: 14.v),
                _buildGamesOnline(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
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
        text: "Profile",
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildTheDevelopment(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 100.v,
        width: 319.h,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 319.h,
                child: ReadMoreText(
                  "Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. ",
                  trimLines: 4,
                  colorClickableText: appTheme.indigoA20003,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: "Read More",
                  moreStyle: CustomTextStyles
                      .bodyLargeAirbnbCerealWBkBluegray80001
                      .copyWith(
                    height: 1.56,
                  ),
                  lessStyle: CustomTextStyles
                      .bodyLargeAirbnbCerealWBkBluegray80001
                      .copyWith(
                    height: 1.56,
                  ),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVector10,
              height: 2.v,
              width: 5.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(
                right: 130.h,
                bottom: 10.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChange(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 4.v),
          child: Text(
            "Interest",
            style: CustomTextStyles.titleMediumBluegray900,
          ),
        ),
        CustomElevatedButton(
          height: 28.v,
          width: 90.h,
          text: "Change".toUpperCase(),
          leftIcon: Container(
            margin: EdgeInsets.only(right: 6.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup18439,
              height: 13.adaptSize,
              width: 13.adaptSize,
            ),
          ),
          buttonStyle: CustomButtonStyles.outlineCyanTL14,
          buttonTextStyle:
              CustomTextStyles.labelMediumAirbnbCerealWMdIndigoA20003,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGamesOnline(BuildContext context) {
    return Wrap(
      runSpacing: 7.v,
      spacing: 7.h,
      children: List<Widget>.generate(6, (index) => Gamesonline2ItemWidget()),
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
