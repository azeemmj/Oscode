import '../event_details_eight_screen/widgets/calendar_item_widget.dart';
import '../event_details_eight_screen/widgets/frame8_item_widget.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';
import 'package:oscode2/widgets/custom_outlined_button.dart';
import 'package:oscode2/widgets/custom_text_form_field.dart';

class EventDetailsEightScreen extends StatelessWidget {
  EventDetailsEightScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController enteryourtopicController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 24.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 25.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  _buildTwentyNine(context),
                  SizedBox(height: 31.v),
                  _buildFrame(context),
                  SizedBox(height: 25.v),
                  _buildFrame1(context),
                  SizedBox(height: 23.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Avaliable session",
                      style: CustomTextStyles.titleMediumGray900,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  _buildCalendar(context),
                  SizedBox(height: 23.v),
                  _buildFrame2(context),
                  SizedBox(height: 25.v),
                  _buildFrame3(context),
                  SizedBox(height: 27.v),
                  _buildAdditionalNotes(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownGray90003,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "Ibrahim Hassan",
        margin: EdgeInsets.only(left: 11.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 9.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTwentyNine(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 51.v,
        width: 327.h,
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            AnotherStepper(
              iconHeight: 49,
              iconWidth: 113,
              stepperDirection: Axis.horizontal,
              activeIndex: 0,
              barThickness: 1,
              inverted: true,
              stepperList: [
                StepperData(
                  iconWidget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgScheduleIndigoA20003,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 6.v),
                        child: Text(
                          "Schedule session",
                          style: CustomTextStyles
                              .titleSmallAirbnbCerealWMdIndigoA20003,
                        ),
                      ),
                    ],
                  ),
                ),
                StepperData(
                  iconWidget: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPreview,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 6.v),
                        child: Text(
                          "Review",
                          style: CustomTextStyles.bodyMediumBluegray40001,
                        ),
                      ),
                    ],
                  ),
                ),
                StepperData(
                  iconWidget: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPaymentsBlueGray40001,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.v),
                        child: Text(
                          "Payment",
                          style: CustomTextStyles.bodyMediumBluegray40001,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: 51.v,
                width: 57.h,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Choose type of session",
          style: CustomTextStyles.titleMediumGray900,
        ),
        SizedBox(height: 13.v),
        CustomElevatedButton(
          height: 48.v,
          text: "Online session",
          margin: EdgeInsets.only(right: 25.h),
          buttonTextStyle: CustomTextStyles.bodyMediumPrimary_1,
        ),
        SizedBox(height: 10.v),
        CustomOutlinedButton(
          text: "Physical session",
          margin: EdgeInsets.only(right: 25.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Select subject",
          style: CustomTextStyles.titleMediumGray900,
        ),
        SizedBox(height: 13.v),
        CustomOutlinedButton(
          text: "Mathematics",
          margin: EdgeInsets.only(right: 25.h),
        ),
        SizedBox(height: 10.v),
        CustomElevatedButton(
          height: 48.v,
          text: "Biology",
          margin: EdgeInsets.only(right: 25.h),
          buttonTextStyle: CustomTextStyles.bodyMediumPrimary_1,
        ),
        SizedBox(height: 10.v),
        CustomOutlinedButton(
          text: "Biology",
          margin: EdgeInsets.only(right: 25.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return SizedBox(
      height: 106.v,
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
        itemCount: 4,
        itemBuilder: (context, index) {
          return CalendarItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Avaliable Time",
          style: CustomTextStyles.titleMediumGray900,
        ),
        SizedBox(height: 15.v),
        Wrap(
          runSpacing: 16.v,
          spacing: 16.h,
          children: List<Widget>.generate(2, (index) => Frame8ItemWidget()),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Add the topic to the booking",
          style: CustomTextStyles.titleMediumGray900,
        ),
        SizedBox(height: 13.v),
        Padding(
          padding: EdgeInsets.only(right: 25.h),
          child: CustomTextFormField(
            controller: enteryourtopicController,
            hintText: "Enter your topic",
            hintStyle: CustomTextStyles.bodyMediumBluegray4000113,
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 15.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineGrayTL101,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAdditionalNotes(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 174.v,
        width: 325.h,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Additional notes ",
                          style: CustomTextStyles.titleMediumLatoGray90001,
                        ),
                        TextSpan(
                          text: "(optional)",
                          style: CustomTextStyles.titleSmallGray90001,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 15.v),
                  Container(
                    width: 325.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.h,
                      vertical: 16.v,
                    ),
                    decoration: AppDecoration.outlineGray3001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 71.v),
                        Text(
                          "Enter your notes",
                          style: CustomTextStyles.bodyMediumBluegray4000113,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
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
      ),
    );
  }
}
