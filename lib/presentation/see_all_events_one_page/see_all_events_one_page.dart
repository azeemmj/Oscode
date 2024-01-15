import '../see_all_events_one_page/widgets/eventcard3_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SeeAllEventsOnePage extends StatelessWidget {
  const SeeAllEventsOnePage({Key? key})
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
              SizedBox(height: 19.v),
              _buildFrame(context),
              SizedBox(height: 13.v),
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
      title: AppbarSubtitle(
        text: "Podcast",
        margin: EdgeInsets.only(left: 24.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearchGray90003,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 9.v,
            right: 7.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(16.h, 9.v, 31.h, 2.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: AppDecoration.fillPink.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Listen podcast",
                  style: CustomTextStyles.titleMediumGray90003,
                ),
                SizedBox(height: 4.v),
                Text(
                  "From your favorite mentors",
                  style: CustomTextStyles.bodyMediumPrimary13,
                ),
                SizedBox(height: 12.v),
                CustomElevatedButton(
                  width: 94.h,
                  text: "Listen now".toUpperCase(),
                  buttonStyle: CustomButtonStyles.fillPurple,
                  buttonTextStyle:
                      CustomTextStyles.labelLargeAirbnbCerealWMdPrimaryMedium,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage96,
            height: 106.v,
            width: 105.h,
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
            return Eventcard3ItemWidget();
          },
        ),
      ),
    );
  }
}
