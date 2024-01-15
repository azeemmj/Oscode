import '../event_details_nine_screen/widgets/frame2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';
import 'package:oscode2/widgets/custom_outlined_button.dart';

class EventDetailsNineScreen extends StatelessWidget {
  const EventDetailsNineScreen({Key? key})
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
              SizedBox(height: 23.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 25.h,
                      right: 25.h,
                      bottom: 32.v,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame18809,
                          height: 36.v,
                          width: 318.h,
                        ),
                        SizedBox(height: 43.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Hello there!",
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Opacity(
                          opacity: 0.84,
                          child: Container(
                            width: 317.h,
                            margin: EdgeInsets.only(right: 7.h),
                            child: Text(
                              "In a few moments you will be ready to share your expertise & time",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.titleMediumBluegray40001
                                  .copyWith(
                                height: 1.33,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 22.v),
                        _buildConnectYourSocial(context),
                        SizedBox(height: 25.v),
                        _buildYourMentorPage(context),
                        SizedBox(height: 25.v),
                        _buildHowDoYouPlan(context),
                        SizedBox(height: 25.v),
                        _buildWhatAllDoYou(context),
                        SizedBox(height: 39.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 58.v,
                            width: 271.h,
                            margin: EdgeInsets.only(left: 20.h),
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
                                    "Next".toUpperCase(),
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildConnectYourSocial(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Connect your social account",
          style: CustomTextStyles.titleMediumGray900,
        ),
        SizedBox(height: 13.v),
        Container(
          decoration: AppDecoration.outlineGray300.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 11.h,
                  vertical: 16.v,
                ),
                decoration: AppDecoration.fillGray30003.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 4.v),
                    Text(
                      "https://",
                      style: CustomTextStyles.bodyMediumOxygenGray900,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 21.v,
                  bottom: 16.v,
                ),
                child: Text(
                  "Instagram/anubhav",
                  style: CustomTextStyles.bodyMediumOxygenGray900,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildYourMentorPage(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your Mentor page link",
          style: CustomTextStyles.titleMediumGray900,
        ),
        SizedBox(height: 16.v),
        Container(
          decoration: AppDecoration.outlineGray300.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            children: [
              CustomElevatedButton(
                height: 56.v,
                width: 90.h,
                text: "mentor.io/",
                buttonStyle: CustomButtonStyles.fillGray,
                buttonTextStyle: CustomTextStyles.bodyMediumGray900,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 19.v,
                  bottom: 18.v,
                ),
                child: Text(
                  "anubhav",
                  style: CustomTextStyles.bodyMediumOxygenGray900,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHowDoYouPlan(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "How do you plan to use mentorship",
            style: CustomTextStyles.titleMediumGray900,
          ),
        ),
        SizedBox(height: 13.v),
        CustomOutlinedButton(
          text: "I want to offer my expertise to my followers",
        ),
        SizedBox(height: 10.v),
        CustomElevatedButton(
          height: 48.v,
          text: "I want to monetise my audience",
          buttonTextStyle: CustomTextStyles.bodyMediumPrimary_1,
        ),
        SizedBox(height: 10.v),
        CustomOutlinedButton(
          text: "I’m just exploring",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildWhatAllDoYou(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "What all do you plan to offer?",
          style: CustomTextStyles.titleMediumGray900,
        ),
        SizedBox(height: 13.v),
        Wrap(
          runSpacing: 10.v,
          spacing: 10.h,
          children: List<Widget>.generate(4, (index) => Frame2ItemWidget()),
        ),
      ],
    );
  }
}
