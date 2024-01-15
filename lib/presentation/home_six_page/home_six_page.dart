import '../home_six_page/widgets/userprofile2_item_widget.dart';
import '../home_six_page/widgets/userprofile3_item_widget.dart';
import '../home_six_page/widgets/userprofile4_item_widget.dart';
import '../home_six_page/widgets/userprofile5_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class HomeSixPage extends StatefulWidget {
  const HomeSixPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeSixPageState createState() => HomeSixPageState();
}

class HomeSixPageState extends State<HomeSixPage>
    with AutomaticKeepAliveClientMixin<HomeSixPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 29.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Column(
                      children: [
                        _buildFrameStack(context),
                        SizedBox(height: 31.v),
                        _buildPopularColumn(context),
                        SizedBox(height: 25.v),
                        _buildFavoriteTutorsColumn(context),
                        SizedBox(height: 26.v),
                        _buildUpcomingSessionColumn(context),
                        SizedBox(height: 32.v),
                        _buildPendingSessionColumn(context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameStack(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.cyanA400.withOpacity(0.16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Container(
          height: 127.v,
          width: 328.h,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 9.v,
          ),
          decoration: AppDecoration.fillCyanA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Find the right tutor for you",
                      style: CustomTextStyles.titleMediumGray90003,
                    ),
                    SizedBox(height: 3.v),
                    SizedBox(
                      width: 184.h,
                      child: Text(
                        "Ace your test and examination by getting the knowledge needed",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallBluegray700,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    CustomElevatedButton(
                      height: 23.v,
                      width: 79.h,
                      text: "Find tutor".toUpperCase(),
                      buttonStyle: CustomButtonStyles.fillLightBlue,
                      buttonTextStyle:
                          CustomTextStyles.labelMediumAirbnbCerealWMdPrimary,
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgUserPurple100,
                height: 96.adaptSize,
                width: 96.adaptSize,
                alignment: Alignment.topRight,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPopularColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 36.h),
          child: _buildPopular(
            context,
            popularText: "Top tutors",
            seeAllText: "See All",
          ),
        ),
        SizedBox(height: 13.v),
        SizedBox(
          height: 255.v,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return Userprofile2ItemWidget();
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFavoriteTutorsColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 36.h),
          child: _buildPopular(
            context,
            popularText: "Favorite tutors",
            seeAllText: "See All",
          ),
        ),
        SizedBox(height: 14.v),
        SizedBox(
          height: 255.v,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return Userprofile3ItemWidget();
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUpcomingSessionColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 36.h),
          child: _buildPopular(
            context,
            popularText: "Upcoming session",
            seeAllText: "See All",
          ),
        ),
        SizedBox(height: 29.v),
        SizedBox(
          height: 255.v,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return Userprofile4ItemWidget();
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPendingSessionColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 36.h),
          child: _buildPopular(
            context,
            popularText: "Pending session",
            seeAllText: "See All",
          ),
        ),
        SizedBox(height: 29.v),
        SizedBox(
          height: 255.v,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return Userprofile5ItemWidget();
            },
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildPopular(
    BuildContext context, {
    required String popularText,
    required String seeAllText,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Opacity(
          opacity: 0.84,
          child: Text(
            popularText,
            style: CustomTextStyles.titleMediumGray9000318.copyWith(
              color: appTheme.gray90003.withOpacity(0.65),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 146.h,
            top: 3.v,
          ),
          child: Text(
            seeAllText,
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
              top: 9.v,
              bottom: 5.v,
            ),
          ),
        ),
      ],
    );
  }
}
