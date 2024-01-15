import '../event_details_one_screen/widgets/frame_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';
import 'package:oscode2/widgets/custom_outlined_button.dart';
import 'package:oscode2/widgets/custom_text_form_field.dart';

class EventDetailsOneScreen extends StatelessWidget {
  EventDetailsOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController websiteLinkController = TextEditingController();

  TextEditingController mentorPageURLController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                        _buildConnectYourSocialFrame(context),
                        SizedBox(height: 25.v),
                        _buildYourMentorPageFrame(context),
                        SizedBox(height: 25.v),
                        _buildHowDoYouPlanFrame(context),
                        SizedBox(height: 25.v),
                        _buildWhatAllDoYouFrame(context),
                        SizedBox(height: 39.v),
                        GestureDetector(
  onTap: () {
    // Navigate to the next page using named route
    Navigator.pushNamed(context, AppRoutes.eventDetailsSixteenScreen);
  },
  child: Align(
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
              "Next".toUpperCase(),
              style: theme.textTheme.titleMedium,
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildConnectYourSocialFrame(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Connect your social account",
          style: CustomTextStyles.titleMediumGray900,
        ),
        SizedBox(height: 13.v),
        CustomTextFormField(
          controller: websiteLinkController,
          hintText: "https://",
          hintStyle: CustomTextStyles.bodyMediumOxygenGray900,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 19.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildYourMentorPageFrame(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your Mentor page link",
          style: CustomTextStyles.titleMediumGray900,
        ),
        SizedBox(height: 16.v),
        CustomTextFormField(
          controller: mentorPageURLController,
          hintText: "mentor.io/",
          hintStyle: CustomTextStyles.bodyMediumGray900,
          textInputAction: TextInputAction.done,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 18.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHowDoYouPlanFrame(BuildContext context) {
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
        CustomOutlinedButton(
          text: "I want to monetise my audience",
          buttonTextStyle: CustomTextStyles.bodyMediumGray900,
        ),
        SizedBox(height: 10.v),
        CustomOutlinedButton(
          text: "I’m just exploring",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildWhatAllDoYouFrame(BuildContext context) {
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
          children: List<Widget>.generate(4, (index) => FrameItemWidget()),
        ),
      ],
    );
  }
}
