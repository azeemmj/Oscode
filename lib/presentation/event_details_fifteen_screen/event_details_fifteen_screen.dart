import '../event_details_fifteen_screen/widgets/eventdetailsfifteen_item_widget.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';
import 'package:oscode2/widgets/custom_text_form_field.dart';

class EventDetailsFifteenScreen extends StatelessWidget {
  EventDetailsFifteenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController mobileNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 35.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: Text(
                    "Alright! One last thing",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 9.v),
                Opacity(
                  opacity: 0.84,
                  child: Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text(
                      "Whatsapp number",
                      style: CustomTextStyles.titleMediumBluegray40001,
                    ),
                  ),
                ),
                SizedBox(height: 28.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 19.h,
                    right: 27.h,
                  ),
                  child: CustomTextFormField(
                    controller: mobileNumberController,
                    hintText: "Mobile Number",
                    hintStyle: CustomTextStyles.bodyMediumGray600,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.phone,
                    alignment: Alignment.center,
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(15.h, 17.v, 14.h, 17.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCamera,
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 56.v,
                    ),
                  ),
                ),
                Spacer(),
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
                            "Next".toUpperCase(),
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 45.v),
                _buildEventDetailsFifteen(context),
                SizedBox(height: 7.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 44.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomElevatedButton(
                          height: 46.v,
                          width: 117.h,
                          text: "0",
                          buttonStyle: CustomButtonStyles.outlineBlueGray,
                          buttonTextStyle: CustomTextStyles
                              .headlineSmallSFProDisplayBlack900,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowDown,
                          height: 18.v,
                          width: 22.h,
                          margin: EdgeInsets.only(
                            left: 55.h,
                            top: 13.v,
                            bottom: 15.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 69.v,
      title: Padding(
        padding: EdgeInsets.only(left: 28.h),
        child: AnotherStepper(
          stepperDirection: Axis.horizontal,
          activeIndex: 0,
          inverted: true,
          stepperList: [
            StepperData(),
            StepperData(),
            StepperData(),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUserYellow900,
          margin: EdgeInsets.symmetric(
            horizontal: 29.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEventDetailsFifteen(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 47.v,
        crossAxisCount: 3,
        mainAxisSpacing: 6.h,
        crossAxisSpacing: 6.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 9,
      itemBuilder: (context, index) {
        return EventdetailsfifteenItemWidget();
      },
    );
  }
}
