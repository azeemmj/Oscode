import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';
import 'package:oscode2/widgets/custom_text_form_field.dart';
import 'package:qr_flutter/qr_flutter.dart';

class SearchWhiteBarOneScreen extends StatelessWidget {
  SearchWhiteBarOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController additionalInfoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 9.v,
          ),
          child: Column(
            children: [
              _buildCardColumn(context),
              SizedBox(height: 19.v),
              _buildFrameRow2(context),
              SizedBox(height: 21.v),
              CustomTextFormField(
                controller: additionalInfoController,
                hintText: "Be sure take this ticket while entering in the hall",
                hintStyle: CustomTextStyles.bodySmallNunitoSansGray900,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(10.h, 12.v, 12.h, 12.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVideocamera,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 44.v,
                ),
                contentPadding: EdgeInsets.only(
                  top: 13.v,
                  right: 23.h,
                  bottom: 13.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillRed,
                fillColor: appTheme.red50,
              ),
              SizedBox(height: 5.v),
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
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineBluegray60011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: appTheme.orange200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 115.v,
              width: 295.h,
              decoration: AppDecoration.fillOrange.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage81115x295,
                    height: 115.v,
                    width: 295.h,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 115.v,
                      width: 295.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage85115x295,
                            height: 115.v,
                            width: 295.h,
                            radius: BorderRadius.circular(
                              10.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 115.v,
                              width: 295.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage86115x295,
                                    height: 115.v,
                                    width: 295.h,
                                    radius: BorderRadius.circular(
                                      10.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage77115x295,
                                    height: 115.v,
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
          SizedBox(height: 11.v),
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
  Widget _buildFrameRow2(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineBluegray60011,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 100.h,
                child: Text(
                  "Scan this QR code or show this ticket at the concert",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 40.v),
              Text(
                "Ticket Id  #332212",
                style: CustomTextStyles.titleMediumGray90003,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 19.v,
              right: 20.h,
              bottom: 19.v,
            ),
            child: QrImageView(
              data: 'https://www.google.com',
              size: 80.adaptSize,
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
      width: 176.h,
      margin: EdgeInsets.only(
        left: 133.h,
        right: 66.h,
        bottom: 34.v,
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
              "Download".toUpperCase(),
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
