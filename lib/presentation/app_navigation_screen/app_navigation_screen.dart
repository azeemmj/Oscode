import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign in",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Verification One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verificationOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Resset Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ressetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search- White Bar Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchWhiteBarFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Filter",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.filterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Menu White",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.menuWhiteScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details Seventeen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsSeventeenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search- White Bar Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchWhiteBarThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "See All Events",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.seeAllEventsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details Ten",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsTenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Empty Events - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.emptyEventsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Map View",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mapViewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search- White Bar One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchWhiteBarOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search- White Bar Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchWhiteBarTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search- White Bar",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchWhiteBarScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details Nine",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsNineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details Sixteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsSixteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details Eleven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsElevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details Twelve",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsTwelveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details Fifteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsFifteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Verification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details Nineteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsNineteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home Four - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeFourTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details Fourteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsFourteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home Six - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeSixTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Empty Events One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.emptyEventsOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details Thirteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsThirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details TwentySeven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsTwentysevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details TwentyFour",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsTwentyfourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details TwentyFive",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsTwentyfiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details TwentyTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsTwentytwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details Twenty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsTwentyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details TwentyOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsTwentyoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details TwentySix",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsTwentysixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Event Details TwentyThree",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eventDetailsTwentythreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Fifteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxFifteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Sixteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxSixteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Seventeen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxSeventeenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Eighteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxEighteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Nineteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxNineteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - ThirtySix",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxThirtysixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - TwentyFive",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone11ProMaxTwentyfiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - TwentySix",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone11ProMaxTwentysixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - TwentySeven",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone11ProMaxTwentysevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - ThirtyFour",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone11ProMaxThirtyfourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - TwentyThree",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone11ProMaxTwentythreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - TwentyFour",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone11ProMaxTwentyfourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Organizer  Profile- Review - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .organizerProfileReviewTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Empty Notification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.emptyNotificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationScreen),
                        ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
