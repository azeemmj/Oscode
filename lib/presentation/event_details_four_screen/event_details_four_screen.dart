import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_checkbox_button.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';

class EventDetailsFourScreen extends StatelessWidget {
  EventDetailsFourScreen({Key? key})
      : super(
          key: key,
        );

  bool saturday = false;

  bool sunday = false;

  bool monday = false;

  bool tuesday = false;

  bool thrusday = false;

  bool friday = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 23.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStepperFrame(context),
              SizedBox(height: 43.v),
              Container(
                width: 276.h,
                margin: EdgeInsets.only(right: 48.h),
                child: Text(
                  "Great! Now let's set your availability",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 7.v),
              Opacity(
                opacity: 0.84,
                child: Text(
                  "Great! Now let's set your availability",
                  style: CustomTextStyles.titleMediumBluegray40001,
                ),
              ),
              SizedBox(height: 26.v),
              _buildFrame(context),
              SizedBox(height: 77.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Apply To None",
                  style: CustomTextStyles.titleMediumIndigoA2000318_1,
                ),
              ),
              SizedBox(height: 14.v),
              Container(
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
              SizedBox(height: 9.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStepperFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: AnotherStepper(
        stepperDirection: Axis.horizontal,
        activeIndex: 0,
        barThickness: 2,
        inverted: true,
        stepperList: [
          StepperData(),
          StepperData(),
          StepperData(),
          StepperData(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 12.v,
                bottom: 10.v,
              ),
              child: CustomCheckboxButton(
                text: "Saturday",
                value: saturday,
                onChange: (value) {
                  saturday = value;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 13.h),
              child: _buildRowInputField(
                context,
                timeText: "8:00 AM",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: _buildRowInputField(
                context,
                timeText: "9:00 AM",
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgFrameIndigoA2000318x18,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(
                left: 7.h,
                top: 11.v,
                bottom: 11.v,
              ),
            ),
          ],
        ),
        SizedBox(height: 9.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 12.v,
                bottom: 10.v,
              ),
              child: CustomCheckboxButton(
                text: "Sunday",
                value: sunday,
                onChange: (value) {
                  sunday = value;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 21.h),
              child: _buildRowInputField(
                context,
                timeText: "8:00 AM",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: _buildRowInputField(
                context,
                timeText: "9:00 AM",
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgFrameIndigoA2000318x18,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(
                left: 7.h,
                top: 11.v,
                bottom: 11.v,
              ),
            ),
          ],
        ),
        SizedBox(height: 9.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 12.v,
                bottom: 10.v,
              ),
              child: CustomCheckboxButton(
                text: "Monday",
                value: monday,
                onChange: (value) {
                  monday = value;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 17.h),
              child: _buildRowInputField(
                context,
                timeText: "8:00 AM",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: _buildRowInputField(
                context,
                timeText: "9:00 AM",
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgFrameIndigoA2000318x18,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(
                left: 7.h,
                top: 11.v,
                bottom: 11.v,
              ),
            ),
          ],
        ),
        SizedBox(height: 9.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 12.v,
                bottom: 10.v,
              ),
              child: CustomCheckboxButton(
                text: "Tuesday",
                value: tuesday,
                onChange: (value) {
                  tuesday = value;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 17.h),
              child: _buildRowInputField(
                context,
                timeText: "8:00 AM",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: _buildRowInputField(
                context,
                timeText: "9:00 AM",
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgFrameIndigoA2000318x18,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(
                left: 7.h,
                top: 11.v,
                bottom: 11.v,
              ),
            ),
          ],
        ),
        SizedBox(height: 9.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 10.adaptSize,
              width: 10.adaptSize,
              margin: EdgeInsets.only(
                top: 5.v,
                bottom: 22.v,
              ),
              padding: EdgeInsets.all(2.h),
              decoration: AppDecoration.outlineIndigoA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder1,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgFiCheckPrimary,
                height: 5.adaptSize,
                width: 5.adaptSize,
                alignment: Alignment.center,
              ),
            ),
            Container(
              width: 48.h,
              margin: EdgeInsets.only(
                left: 14.h,
                top: 3.v,
              ),
              child: Text(
                "Wednesday",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumOxygenBlack900.copyWith(
                  height: 1.26,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 17.h),
              child: _buildRowInputField(
                context,
                timeText: "8:00 AM",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: _buildRowInputField(
                context,
                timeText: "9:00 AM",
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgFrameIndigoA2000318x18,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(
                left: 7.h,
                top: 11.v,
                bottom: 11.v,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 12.v,
                bottom: 10.v,
              ),
              child: CustomCheckboxButton(
                text: "Thrusday",
                value: thrusday,
                onChange: (value) {
                  thrusday = value;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: _buildRowInputField(
                context,
                timeText: "8:00 AM",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: _buildRowInputField(
                context,
                timeText: "9:00 AM",
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgFrameIndigoA2000318x18,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(
                left: 7.h,
                top: 11.v,
                bottom: 11.v,
              ),
            ),
          ],
        ),
        SizedBox(height: 9.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 12.v,
                bottom: 10.v,
              ),
              child: CustomCheckboxButton(
                text: "Friday",
                value: friday,
                onChange: (value) {
                  friday = value;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 29.h),
              child: _buildRowInputField(
                context,
                timeText: "8:00 AM",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: _buildRowInputField(
                context,
                timeText: "9:00 AM",
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgFrameIndigoA2000318x18,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(
                left: 7.h,
                top: 11.v,
                bottom: 11.v,
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildRowInputField(
    BuildContext context, {
    required String timeText,
  }) {
    return Container(
      width: 99.h,
      padding: EdgeInsets.symmetric(vertical: 9.v),
      decoration: AppDecoration.outlineGray3001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: Text(
              timeText,
              style: theme.textTheme.labelLarge!.copyWith(
                color: appTheme.gray900,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkBlueGray40001,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ],
      ),
    );
  }
}
