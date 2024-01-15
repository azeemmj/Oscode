import '../event_details_ten_screen/widgets/eventcard1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_title.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';
import 'package:readmore/readmore.dart';

class EventDetailsTenScreen extends StatelessWidget {
  const EventDetailsTenScreen({Key? key})
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
              _buildArrowDown(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 32.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 4.v),
                    Container(
                      width: 292.h,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        right: 38.h,
                      ),
                      child: Text(
                        "International Band Music Concert",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.displaySmall,
                      ),
                    ),
                    SizedBox(height: 21.v),
                    _buildEventCard(context),
                    SizedBox(height: 25.v),
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
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowDown(BuildContext context) {
    return SizedBox(
      height: 221.v,
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
                left: 42.h,
                top: 131.v,
                right: 38.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 32.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.outlineGray70019.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder19,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Column(
                      children: [
                        CustomIconButton(
                          height: 44.adaptSize,
                          width: 44.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          decoration: IconButtonStyleHelper.fillTeal,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgCall,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Text(
                          "Call",
                          style: CustomTextStyles.bodySmallGray900,
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 3.v),
                    child: Column(
                      children: [
                        CustomIconButton(
                          height: 44.adaptSize,
                          width: 44.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          decoration: IconButtonStyleHelper.fillDeepPurple,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgSettingsPrimary,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "Directions",
                          style: CustomTextStyles.bodySmallGray900,
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Column(
                      children: [
                        CustomIconButton(
                          height: 44.adaptSize,
                          width: 44.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          decoration: IconButtonStyleHelper.fillAmber,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgPrinter,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Text(
                          "My Ticket",
                          style: CustomTextStyles.bodySmallGray900,
                        ),
                      ],
                    ),
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
  Widget _buildEventCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 91.h),
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
          return Eventcard1ItemWidget();
        },
      ),
    );
  }
}
