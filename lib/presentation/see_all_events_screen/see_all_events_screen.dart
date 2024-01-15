import '../see_all_events_screen/widgets/eventcardlist1_item_widget.dart';
import '../see_all_events_screen/widgets/eventcardlist2_item_widget.dart';
import '../see_all_events_screen/widgets/eventcardlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/presentation/frame_page/frame_page.dart';
import 'package:oscode2/presentation/home_page/home_page.dart';
import 'package:oscode2/presentation/home_two_tab_container_page/home_two_tab_container_page.dart';
import 'package:oscode2/presentation/see_all_events_one_page/see_all_events_one_page.dart';
import 'package:oscode2/presentation/see_all_events_two_page/see_all_events_two_page.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_bottom_bar.dart';
import 'package:oscode2/widgets/custom_radio_button.dart';

class SeeAllEventsScreen extends StatelessWidget {
  SeeAllEventsScreen({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  String radioGroup1 = "";

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            _buildFrame(
                              context,
                              text: "My Booked Events",
                              allCopy: "See All",
                            ),
                            SizedBox(height: 16.v),
                            _buildEventCardList(context),
                            SizedBox(height: 19.v),
                            _buildFrame(
                              context,
                              text: "Upcoming Events",
                              allCopy: "See All",
                            ),
                            SizedBox(height: 16.v),
                            _buildEventCardList1(context),
                            SizedBox(height: 17.v),
                            _buildFrame(
                              context,
                              text: "Past Events",
                              allCopy: "See All",
                            ),
                            SizedBox(height: 18.v),
                            _buildEventCardList2(context),
                          ],
                        ),
                        SizedBox(height: 13.v),
                        _buildFrame4(context),
                        SizedBox(height: 13.v),
                        _buildFrame5(context),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 41.v,
      title: AppbarSubtitle(
        text: "Events",
        margin: EdgeInsets.only(left: 24.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearchGray90003,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 9.v,
            right: 8.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(16.h, 9.v, 32.h, 2.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEventCardList(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 1.v,
        );
      },
      itemCount: 1,
      itemBuilder: (context, index) {
        return EventcardlistItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildEventCardList1(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 13.v,
        );
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        return Eventcardlist1ItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildEventCardList2(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 1.v,
        );
      },
      itemCount: 1,
      itemBuilder: (context, index) {
        return Eventcardlist2ItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildFrame4(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBluegray6000f01.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        children: [
          Container(
            height: 92.v,
            width: 79.h,
            decoration: AppDecoration.fillOrange.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage8792x79,
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
              top: 3.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mon, Jun 21 •\r10:00 PM\r",
                  style: CustomTextStyles.bodyMediumIndigoA2000313,
                ),
                SizedBox(height: 2.v),
                SizedBox(
                  width: 191.h,
                  child: Text(
                    "Collectivity Plays the Music of Jimi ",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallAirbnbCerealWMdGray90003,
                  ),
                ),
                SizedBox(height: 7.v),
                CustomRadioButton(
                  text: "Longboard Margarita Bar ",
                  value: "Longboard Margarita Bar ",
                  groupValue: radioGroup,
                  onChange: (value) {
                    radioGroup = value;
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame5(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.v),
      decoration: AppDecoration.outlineBluegray6000f01.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 92.v,
            width: 79.h,
            decoration: AppDecoration.fillOrange.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup,
              height: 92.v,
              width: 79.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sun, Apr 25 •\r10:15 AM\r",
                  style: CustomTextStyles.bodyMediumIndigoA2000313,
                ),
                SizedBox(height: 4.v),
                SizedBox(
                  width: 203.h,
                  child: Text(
                    "International Gala Music Festival",
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallAirbnbCerealWMdBlack900,
                  ),
                ),
                SizedBox(height: 7.v),
                CustomRadioButton(
                  text: "36 Guild Street Pune, India",
                  value: "36 Guild Street Pune, India",
                  groupValue: radioGroup1,
                  textStyle: CustomTextStyles.bodyMediumGray50003,
                  onChange: (value) {
                    radioGroup1 = value;
                  },
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

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String text,
    required String allCopy,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
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
          padding: EdgeInsets.only(bottom: 3.v),
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
              top: 6.v,
              bottom: 8.v,
            ),
          ),
        ),
      ],
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
