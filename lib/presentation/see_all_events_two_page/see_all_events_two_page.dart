import '../see_all_events_two_page/widgets/eventcard_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SeeAllEventsTwoPage extends StatelessWidget {
  const SeeAllEventsTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 23.h),
          child: Column(
            children: [
              SizedBox(height: 18.v),
              _buildFrame(context),
              SizedBox(height: 19.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Opacity(
                  opacity: 0.84,
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "Upcoming Events",
                      style: CustomTextStyles.titleMediumGray9000318,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              _buildEventCard(context),
            ],
          ),
        ),
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
  Widget _buildFrame(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(vertical: 18.v),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              children: [
                Text(
                  "Book your first event",
                  style: CustomTextStyles.titleMediumGray90003,
                ),
                SizedBox(height: 4.v),
                Text(
                  "Get 20 off in your first ticket",
                  style: CustomTextStyles.bodyMediumPrimary13,
                ),
                SizedBox(height: 12.v),
                CustomElevatedButton(
                  width: 94.h,
                  text: "Book now".toUpperCase(),
                  buttonStyle: CustomButtonStyles.fillAmber,
                  buttonTextStyle:
                      CustomTextStyles.labelLargeAirbnbCerealWMdBlack900,
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage95,
            height: 90.v,
            width: 120.h,
            margin: EdgeInsets.only(top: 1.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEventCard(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 13.v,
            );
          },
          itemCount: 6,
          itemBuilder: (context, index) {
            return EventcardItemWidget();
          },
        ),
      ),
    );
  }
}
