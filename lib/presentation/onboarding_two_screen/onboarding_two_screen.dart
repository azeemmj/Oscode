import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingTwoScreen extends StatelessWidget {
  OnboardingTwoScreen({Key? key})
      : super(
          key: key,
        );

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 768.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                height: 768.v,
                child: PageView(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      height: 768.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: EdgeInsets.all(40.h),
                              decoration: AppDecoration.fillIndigoA.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL48,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 265.h,
                                    margin: EdgeInsets.only(
                                      left: 17.h,
                                      right: 12.h,
                                    ),
                                    child: Text(
                                      " Web Have Modern Events Calendar Feature",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.titleLargePrimary
                                          .copyWith(
                                        height: 1.55,
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.8,
                                    child: Container(
                                      width: 284.h,
                                      margin: EdgeInsets.only(
                                        left: 7.h,
                                        top: 16.v,
                                        right: 3.h,
                                      ),
                                      child: Text(
                                        " In publishing and graphic design, Lorem is a placeholder text commonly ",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .bodyMediumPrimary
                                            .copyWith(
                                          height: 1.67,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup33331,
                            height: 475.v,
                            width: 375.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 19.v),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 768.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: EdgeInsets.all(40.h),
                              decoration: AppDecoration.fillIndigoA.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL48,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 234.h,
                                    margin: EdgeInsets.only(
                                      left: 32.h,
                                      right: 27.h,
                                    ),
                                    child: Text(
                                      " Explore Upcoming and Nearby Events ",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.titleLargePrimary
                                          .copyWith(
                                        height: 1.55,
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.8,
                                    child: Container(
                                      width: 284.h,
                                      margin: EdgeInsets.only(
                                        left: 7.h,
                                        top: 16.v,
                                        right: 3.h,
                                      ),
                                      child: Text(
                                        " In publishing and graphic design, Lorem is a placeholder text commonly ",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .bodyMediumPrimary
                                            .copyWith(
                                          height: 1.67,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup33331475x375,
                            height: 475.v,
                            width: 375.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 19.v),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 768.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: EdgeInsets.all(40.h),
                              decoration: AppDecoration.fillIndigoA.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL48,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 274.h,
                                    margin: EdgeInsets.only(
                                      left: 15.h,
                                      right: 5.h,
                                    ),
                                    child: Text(
                                      "  To Look Up More Events or Activities Nearby By Map",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.titleLargePrimary
                                          .copyWith(
                                        height: 1.55,
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.8,
                                    child: Container(
                                      width: 284.h,
                                      margin: EdgeInsets.only(
                                        left: 7.h,
                                        top: 16.v,
                                        right: 3.h,
                                      ),
                                      child: Text(
                                        " In publishing and graphic design, Lorem is a placeholder text commonly ",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .bodyMediumPrimary
                                            .copyWith(
                                          height: 1.67,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup33331475x375,
                            height: 475.v,
                            width: 375.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 19.v),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              _buildDirectionalRow(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDirectionalRow(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 41.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Opacity(
              opacity: 0.5,
              child: Text(
                "Skip",
                style: CustomTextStyles.titleMediumPrimary,
              ),
            ),
            Spacer(
              flex: 2,
            ),
            SmoothPageIndicator(
              controller: pageController,
              count: 3,
              axisDirection: Axis.horizontal,
              effect: ScrollingDotsEffect(
                spacing: 8,
                activeDotColor: theme.colorScheme.primary,
                dotColor: theme.colorScheme.primary.withOpacity(0.42),
                dotHeight: 8.v,
                dotWidth: 8.h,
              ),
              onDotClicked: (value) {
                pageController.jumpToPage(value);
              },
            ),
            Spacer(
              flex: 2,
            ),
            Text(
              "Next",
              style: CustomTextStyles.titleMedium18,
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildZero(
    BuildContext context, {
    required String buildingBetterText,
    required String createAUniqueText,
    required String image,
  }) {
    return SizedBox(
      height: 768.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(40.h),
              decoration: AppDecoration.fillIndigoA.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL48,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 234.h,
                    margin: EdgeInsets.only(
                      left: 32.h,
                      right: 27.h,
                    ),
                    child: Text(
                      buildingBetterText,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleLargePrimary.copyWith(
                        color: theme.colorScheme.primary,
                        height: 1.55,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Opacity(
                    opacity: 0.8,
                    child: Container(
                      width: 284.h,
                      margin: EdgeInsets.only(
                        left: 7.h,
                        right: 3.h,
                      ),
                      child: Text(
                        createAUniqueText,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumPrimary.copyWith(
                          color: theme.colorScheme.primary.withOpacity(0.64),
                          height: 1.67,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: image,
            height: 475.v,
            width: 375.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 19.v),
          ),
        ],
      ),
    );
  }
}
