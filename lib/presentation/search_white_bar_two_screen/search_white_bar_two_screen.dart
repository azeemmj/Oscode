import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';
import 'package:qr_flutter/qr_flutter.dart';

class SearchWhiteBarTwoScreen extends StatelessWidget {
  const SearchWhiteBarTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 3.h,
                  vertical: 4.v,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup18,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    _buildCardColumn(context),
                    SizedBox(height: 4.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 17.h,
                        right: 20.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgVideocamera,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text(
                              "Be sure take this ticket while entering in the hall",
                              style:
                                  CustomTextStyles.bodySmallNunitoSansGray900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 85.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 14.h,
                          right: 45.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 112.h,
                                  child: Text(
                                    "Scan this QR code or show this ticket at the concert",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        CustomTextStyles.bodySmall11.copyWith(
                                      height: 1.36,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.v),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Ticket Id",
                                        style: CustomTextStyles
                                            .titleSmallAirbnbCerealWMdBluegray40001_1,
                                      ),
                                      TextSpan(
                                        text: "  ",
                                      ),
                                      TextSpan(
                                        text: "#332212",
                                        style: CustomTextStyles
                                            .titleMediumGray90003_1,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 4.v,
                                bottom: 15.v,
                              ),
                              child: QrImageView(
                                data: 'https://www.google.com',
                                size: 60.adaptSize,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildButtonStack(context),
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
  Widget _buildCardColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
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
                            imagePath: ImageConstant.imgImage85120x295,
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
                                    imagePath: ImageConstant.imgImage86120x295,
                                    height: 120.v,
                                    width: 295.h,
                                    radius: BorderRadius.circular(
                                      10.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage77120x295,
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
          SizedBox(height: 25.v),
          Text(
            "International Band Music Concert",
            style: CustomTextStyles.titleMediumGray90003,
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(right: 13.h),
            child: _buildFrameRow(
              context,
              userImage: "Name",
              blockThreeText: "gate",
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(right: 13.h),
            child: _buildFrameRow(
              context,
              userImage: "Anubhav Dwivedi",
              blockThreeText: "A-block,3",
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 13.h),
            child: _buildFrameRow(
              context,
              userImage: "time",
              blockThreeText: "date",
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(right: 13.h),
            child: _buildFrameRow(
              context,
              userImage: "4:00 PM\r-7:00 pM",
              blockThreeText: "14th  Dec | Sat",
            ),
          ),
          SizedBox(height: 12.v),
          Text(
            "Place",
            style: CustomTextStyles.labelLargeAirbnbCerealWMdBluegray40001,
          ),
          SizedBox(height: 7.v),
          Container(
            width: 262.h,
            margin: EdgeInsets.only(right: 32.h),
            child: Text(
              "Gala Convention Center, 36 Guild Street \nPune, India",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallAirbnbCerealWMdGray900,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonStack(BuildContext context) {
    return Container(
      height: 30.v,
      width: 152.h,
      margin: EdgeInsets.only(
        left: 157.h,
        right: 66.h,
        bottom: 38.v,
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 30.adaptSize,
              width: 30.adaptSize,
              decoration: AppDecoration.outlineIndigoF.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: CustomIconButton(
                height: 30.adaptSize,
                width: 30.adaptSize,
                padding: EdgeInsets.all(8.h),
                alignment: Alignment.center,
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowleft,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Share".toUpperCase(),
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameRow(
    BuildContext context, {
    required String userImage,
    required String blockThreeText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        Text(
          blockThreeText,
          style: CustomTextStyles.titleSmallAirbnbCerealWMdGray900.copyWith(
            color: appTheme.gray900,
          ),
        ),
      ],
    );
  }
}
