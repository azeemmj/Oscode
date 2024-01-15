import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';

class SearchWhiteBarScreen extends StatelessWidget {
  const SearchWhiteBarScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          height: 722.v,
          width: double.maxFinite,
          padding: EdgeInsets.all(20.h),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup18,
                height: 602.v,
                width: 334.h,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 18.h,
                    right: 14.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.only(left: 2.h),
                        color: appTheme.orange200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Container(
                          height: 120.v,
                          width: 295.h,
                          decoration: AppDecoration.fillOrange.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage81120x295,
                                height: 120.v,
                                width: 295.h,
                                radius: BorderRadius.circular(
                                  10.h,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  height: 120.v,
                                  width: 295.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgImage85120x295,
                                        height: 120.v,
                                        width: 295.h,
                                        radius: BorderRadius.circular(
                                          10.h,
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          height: 120.v,
                                          width: 295.h,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgImage86120x295,
                                                height: 120.v,
                                                width: 295.h,
                                                radius: BorderRadius.circular(
                                                  10.h,
                                                ),
                                                alignment: Alignment.center,
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgImage77120x295,
                                                height: 120.v,
                                                width: 295.h,
                                                radius: BorderRadius.circular(
                                                  10.h,
                                                ),
                                                alignment: Alignment.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "International Band Music Concert",
                          style: CustomTextStyles.titleMediumGray90003,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          right: 19.h,
                        ),
                        child: _buildFrameRow(
                          context,
                          userImage: "Name",
                          blockThreeText: "gate",
                        ),
                      ),
                      SizedBox(height: 6.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          right: 19.h,
                        ),
                        child: _buildFrameRow(
                          context,
                          userImage: "Anubhav Dwivedi",
                          blockThreeText: "A-block,3",
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          right: 19.h,
                        ),
                        child: _buildFrameRow(
                          context,
                          userImage: "time",
                          blockThreeText: "date",
                        ),
                      ),
                      SizedBox(height: 6.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          right: 19.h,
                        ),
                        child: _buildFrameRow(
                          context,
                          userImage: "4:00 PM\r-7:00 pM",
                          blockThreeText: "14th  Dec | Sat",
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "Place",
                          style: CustomTextStyles
                              .labelLargeAirbnbCerealWMdBluegray40001,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Google meet : ",
                                style: CustomTextStyles
                                    .titleSmallAirbnbCerealWMdGray900_1,
                              ),
                              TextSpan(
                                text: "fac-psyp-hxo",
                                style: CustomTextStyles.bodyMediumIndigoA20003,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 57.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          right: 3.h,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVideocamera,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Text(
                                "This event is online, Use this meeting code to join",
                                style:
                                    CustomTextStyles.bodySmallNunitoSansGray900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 90.v),
                      _buildImGoingToShakeRow(context),
                      SizedBox(height: 41.v),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 58.v,
                          width: 271.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 58.v,
                                  width: 271.h,
                                  padding: EdgeInsets.all(14.h),
                                  decoration:
                                      AppDecoration.outlineIndigoF.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder15,
                                  ),
                                  child: CustomIconButton(
                                    height: 30.adaptSize,
                                    width: 30.adaptSize,
                                    padding: EdgeInsets.all(8.h),
                                    alignment: Alignment.centerRight,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowleft,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Share".toUpperCase(),
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 45.v,
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownGray90003,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 9.v,
          bottom: 14.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "My Ticket",
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildImGoingToShakeRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 104.h,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Google meet link:",
                  style: CustomTextStyles.bodySmallGray900_1,
                ),
                TextSpan(
                  text: "  ",
                ),
                TextSpan(
                  text: "https://meet.google.com/fac-psyp-hxo",
                  style: CustomTextStyles.bodySmallIndigoA20003.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgImage94,
          height: 40.v,
          width: 124.h,
          margin: EdgeInsets.only(
            left: 74.h,
            top: 14.v,
            bottom: 17.v,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrameRow(
    BuildContext context, {
    required String userImage,
    required String blockThreeText,
  }) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            userImage,
            style: CustomTextStyles.titleSmallAirbnbCerealWMdGray900.copyWith(
              color: appTheme.gray900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 102.h),
          child: Text(
            blockThreeText,
            style: CustomTextStyles.titleSmallAirbnbCerealWMdGray900.copyWith(
              color: appTheme.gray900,
            ),
          ),
        ),
      ],
    );
  }
}
