import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';
import 'package:oscode2/widgets/custom_rating_bar.dart';
import 'package:oscode2/widgets/custom_text_form_field.dart';

class EmptyEventsOneScreen extends StatelessWidget {
  EmptyEventsOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController downloadController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildThirty(context),
              SizedBox(height: 23.v),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildEmptyEventsOne(context),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildMustKnowChemistry(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirty(BuildContext context) {
    return SizedBox(
      height: 316.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage91316x375,
            height: 316.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          CustomAppBar(
            height: 38.v,
            leadingWidth: 46.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowDownGray90003,
              margin: EdgeInsets.only(
                left: 24.h,
                top: 5.v,
                bottom: 7.v,
              ),
            ),
            title: AppbarSubtitle(
              text: "Top tutors",
              margin: EdgeInsets.only(left: 11.h),
            ),
            actions: [
              Container(
                height: 30.adaptSize,
                width: 30.adaptSize,
                margin: EdgeInsets.only(
                  left: 20.h,
                  right: 20.h,
                  bottom: 4.v,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgNotification,
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.fromLTRB(4.h, 5.v, 4.h, 3.v),
                    ),
                    CustomIconButton(
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      decoration: IconButtonStyleHelper.fillPrimary,
                      alignment: Alignment.center,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserRed40001,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmptyEventsOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 27.h,
        right: 23.h,
        bottom: 5.v,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 18.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ibrahim Hassan",
                  style: CustomTextStyles.titleLargeGray900,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "₹1500",
                          style: CustomTextStyles.titleMediumIndigoA2000318,
                        ),
                        TextSpan(
                          text: "/ ",
                          style: theme.textTheme.titleSmall,
                        ),
                        TextSpan(
                          text: "per session",
                          style: CustomTextStyles.bodyMediumGray700,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomRatingBar(
                  initialRating: 0,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "500+ reviews & 100+ Session",
                    style: CustomTextStyles.labelLargeAirbnbCerealWMdAmber600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 23.v),
          Text(
            "About",
            style: CustomTextStyles.titleMediumGray90018,
          ),
          SizedBox(height: 10.v),
          Container(
            width: 317.h,
            margin: EdgeInsets.only(right: 7.h),
            child: Text(
              "I am a skilled and professional teacher with over 10 years of teaching students and preparing them to ace their final secondary school examination. ",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeAirbnbCerealWBkGray700.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Row(
            children: [
              Text(
                "Mathematics",
                style: CustomTextStyles.labelLargeAirbnbCerealWMdDeeppurple200,
              ),
              Padding(
                padding: EdgeInsets.only(left: 13.h),
                child: Text(
                  "Biology",
                  style: CustomTextStyles.labelLargeAirbnbCerealWMdPurpleA200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 13.h),
                child: Text(
                  "Physics",
                  style: CustomTextStyles.labelLargeAirbnbCerealWMdIndigoA20003,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Text(
            "Free resources",
            style: CustomTextStyles.titleMediumGray90018,
          ),
          SizedBox(height: 6.v),
          CustomTextFormField(
            controller: downloadController,
            hintText: "50 Maths question and answer for final exam",
            textInputAction: TextInputAction.done,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(25.h, 13.v, 16.h, 11.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgDownload,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 16.h,
              top: 16.v,
              bottom: 16.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
            fillColor: appTheme.whiteA700,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMustKnowChemistry(BuildContext context) {
    return Container(
      height: 58.v,
      width: 294.h,
      margin: EdgeInsets.only(
        left: 43.h,
        right: 38.h,
        bottom: 33.v,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                top: 28.v,
                bottom: 6.v,
              ),
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "5 must know chemistry equation for final exam",
                      style:
                          CustomTextStyles.labelLargeAirbnbCerealWMdGray90001,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgDownload,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 6.h),
                  ),
                ],
              ),
            ),
          ),
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
                      decoration: AppDecoration.outlineIndigoF.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
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
                      "Book a session".toUpperCase(),
                      style: theme.textTheme.titleMedium,
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
}
