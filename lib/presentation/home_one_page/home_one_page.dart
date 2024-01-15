import '../home_one_page/widgets/userprofile6_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';
import 'package:oscode2/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class HomeOnePage extends StatefulWidget {
  const HomeOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeOnePageState createState() => HomeOnePageState();
}

class HomeOnePageState extends State<HomeOnePage>
    with AutomaticKeepAliveClientMixin<HomeOnePage> {
  String radioGroup = "";

  String radioGroup1 = "";

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
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildInternationalGala(context),
                        SizedBox(height: 31.v),
                        _buildPopularTutors(context),
                        SizedBox(height: 26.v),
                        Padding(
                          padding: EdgeInsets.only(right: 35.h),
                          child: _buildNearbyTutors(
                            context,
                            titleText: "Nearby You",
                            seeAllText: "See All",
                          ),
                        ),
                        SizedBox(height: 13.v),
                        _buildWomenLeadership(context),
                        SizedBox(height: 14.v),
                        _buildInternationalKids(context),
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
  Widget _buildInternationalGala(BuildContext context) {
    return Card(
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
    );
  }

  /// Section Widget
  Widget _buildPopularTutors(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 36.h),
          child: _buildNearbyTutors(
            context,
            titleText: "Top tutors",
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
              return Userprofile6ItemWidget();
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildWomenLeadership(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 35.h),
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 92.v,
            width: 79.h,
            decoration: AppDecoration.fillOrange.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage80,
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
              top: 4.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1st  May- Sat -2:00 PM\r".toUpperCase(),
                  style: CustomTextStyles.labelLargeAirbnbCerealWMdIndigoA20003,
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 142.h,
                  child: Text(
                    "Women's leadership conference",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallAirbnbCerealWMdGray90003,
                  ),
                ),
                SizedBox(height: 8.v),
                CustomRadioButton(
                  text: "Radius Gallery • Santa Cruz",
                  value: "Radius Gallery • Santa Cruz",
                  groupValue: radioGroup,
                  onChange: (value) {
                    radioGroup = value;
                  },
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBookmarkRed4000116x16,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.fromLTRB(10.h, 4.v, 4.h, 72.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInternationalKids(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 35.h),
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 92.v,
            width: 79.h,
            decoration: AppDecoration.fillOrange.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage88,
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
              top: 5.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1st  May- Sat -2:00 PM\r".toUpperCase(),
                  style: CustomTextStyles.labelLargeAirbnbCerealWMdIndigoA20003,
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 191.h,
                  child: Text(
                    "International kids safe parents night out",
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallAirbnbCerealWMdGray90003,
                  ),
                ),
                SizedBox(height: 7.v),
                CustomRadioButton(
                  text: "Radius Gallery • Santa Cruz",
                  value: "Radius Gallery • Santa Cruz",
                  groupValue: radioGroup1,
                  onChange: (value) {
                    radioGroup1 = value;
                  },
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBookmarkSecondarycontainer,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              right: 4.h,
              bottom: 72.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildNearbyTutors(
    BuildContext context, {
    required String titleText,
    required String seeAllText,
  }) {
    return Row(
      children: [
        Opacity(
          opacity: 0.84,
          child: Text(
            titleText,
            style: CustomTextStyles.titleMediumGray9000318.copyWith(
              color: appTheme.gray90003.withOpacity(0.65),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 174.h,
            top: 2.v,
            bottom: 2.v,
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
              top: 7.v,
              bottom: 7.v,
            ),
          ),
        ),
      ],
    );
  }
}
