import '../event_details_seventeen_screen/widgets/eventdetailslist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_title.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';
import 'package:readmore/readmore.dart';

class EventDetailsSeventeenScreen extends StatelessWidget {
  const EventDetailsSeventeenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildInviteStack(context),
              SizedBox(height: 20.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 292.h,
                        margin: EdgeInsets.only(
                          left: 24.h,
                          right: 58.h,
                        ),
                        child: Text(
                          "International Band Music Concert",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.displaySmall,
                        ),
                      ),
                      SizedBox(height: 21.v),
                      _buildEventDetailsList(context),
                      SizedBox(height: 25.v),
                      _buildBuyTicketStack(context),
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
  Widget _buildInviteStack(BuildContext context) {
    return SizedBox(
      height: 207.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 177.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage77,
                    height: 177.v,
                    width: 375.h,
                    alignment: Alignment.center,
                  ),
                  CustomAppBar(
                    height: 50.v,
                    leadingWidth: 46.h,
                    leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgArrowDownPrimary,
                      margin: EdgeInsets.only(
                        left: 24.h,
                        top: 8.v,
                        bottom: 20.v,
                      ),
                    ),
                    title: AppbarTitle(
                      text: "Event Details",
                      margin: EdgeInsets.only(left: 13.h),
                    ),
                    actions: [
                      AppbarTrailingIconbuttonOne(
                        imagePath: ImageConstant.imgBookmarkPrimary,
                        margin: EdgeInsets.only(
                          left: 20.h,
                          right: 20.h,
                          bottom: 14.v,
                        ),
                      ),
                    ],
                    styleType: Style
                        .bgGradientnameblack900opacity059nameblack900opacity0,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 40.h,
                top: 147.v,
                right: 40.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.outlineGray70019.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder31,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupPrimary,
                    height: 34.v,
                    width: 79.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      top: 9.v,
                      bottom: 5.v,
                    ),
                    child: Text(
                      "+20 Going",
                      style:
                          CustomTextStyles.titleSmallAirbnbCerealWMdIndigoA700,
                    ),
                  ),
                  Spacer(),
                  CustomElevatedButton(
                    height: 28.v,
                    width: 67.h,
                    text: "Invite",
                    margin: EdgeInsets.symmetric(vertical: 3.v),
                    buttonStyle: CustomButtonStyles.outlineCyan,
                    buttonTextStyle: CustomTextStyles.bodySmallPrimary_1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEventDetailsList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 111.h,
      ),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 21.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return EventdetailslistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBuyTicketStack(BuildContext context) {
    return SizedBox(
      height: 220.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 92.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    theme.colorScheme.primary.withOpacity(0),
                    theme.colorScheme.primary,
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.84,
                    child: Text(
                      "About Event",
                      style: CustomTextStyles.titleMediumGray9000318,
                    ),
                  ),
                  SizedBox(height: 17.v),
                  SizedBox(
                    width: 319.h,
                    child: ReadMoreText(
                      "Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. ",
                      trimLines: 4,
                      colorClickableText: appTheme.indigoA20003,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "Read More...",
                      moreStyle: CustomTextStyles
                          .bodyLargeAirbnbCerealWBkGray90003
                          .copyWith(
                        height: 1.75,
                      ),
                      lessStyle: CustomTextStyles
                          .bodyLargeAirbnbCerealWBkGray90003
                          .copyWith(
                        height: 1.75,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomElevatedButton(
            height: 181.v,
            width: double.maxFinite,
            text: "Buy Ticket 120".toUpperCase(),
            margin: EdgeInsets.only(bottom: 2.v),
            rightIcon: Container(
              padding: EdgeInsets.fromLTRB(8.h, 8.v, 9.h, 9.v),
              margin: EdgeInsets.only(left: 22.h),
              decoration: BoxDecoration(
                color: appTheme.indigoA400,
                borderRadius: BorderRadius.circular(
                  15.h,
                ),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowleft,
                height: 13.adaptSize,
                width: 13.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPrimaryToPrimaryDecoration,
            buttonTextStyle: theme.textTheme.titleMedium!,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
