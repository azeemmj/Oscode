import '../iphone_11_pro_max_seventeen_screen/widgets/ninetyeight_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';
import 'package:oscode2/widgets/custom_text_form_field.dart';

class Iphone11ProMaxSeventeenScreen extends StatelessWidget {
  Iphone11ProMaxSeventeenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController onlineSessionController = TextEditingController();

  TextEditingController physicalSessionController = TextEditingController();

  TextEditingController mathematicsController = TextEditingController();

  TextEditingController biologyController = TextEditingController();

  TextEditingController physicsController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: 414.h,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 57.v),
              child: Column(
                children: [
                  _buildBookASessionSection(context),
                  SizedBox(height: 115.v),
                  _buildOnlineSessionSection(context),
                  SizedBox(height: 27.v),
                  _buildMathematicsSection(context),
                  SizedBox(height: 25.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text(
                        "Avaliable session",
                        style: CustomTextStyles.titleMediumLatoGray9000118,
                      ),
                    ),
                  ),
                  SizedBox(height: 148.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text(
                        "Avaliable Time",
                        style: CustomTextStyles.titleMediumLatoGray9000118,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  _buildEditTextSection(context),
                  SizedBox(height: 18.v),
                  _buildAdditionalNotesSection(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBookASessionSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 56.v,
        width: 366.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 22.h),
              child: CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                alignment: Alignment.bottomLeft,
                child: CustomImageView(),
              ),
            ),
            CustomElevatedButton(
              height: 24.v,
              width: 366.h,
              text: "Book a session",
              buttonStyle: CustomButtonStyles.fillIndigoA,
              alignment: Alignment.topCenter,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOnlineSessionSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "Choose type of session",
              style: CustomTextStyles.titleMediumLatoBlack900,
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 8.h,
            ),
            child: CustomTextFormField(
              controller: onlineSessionController,
              hintText: "Online session",
              hintStyle: CustomTextStyles.titleMediumLatoGray700_2,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 14.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.outlineIndigoA,
              fillColor: appTheme.whiteA700,
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(right: 14.h),
            child: CustomTextFormField(
              controller: physicalSessionController,
              hintText: "Physical session",
              hintStyle: CustomTextStyles.titleMediumLatoGray700_2,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 14.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
              fillColor: appTheme.whiteA700,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMathematicsSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Select subject",
              style: CustomTextStyles.titleMediumLatoBlack900,
            ),
          ),
          SizedBox(height: 15.v),
          CustomTextFormField(
            controller: mathematicsController,
            hintText: "Mathematics",
            hintStyle: CustomTextStyles.titleMediumLatoGray700_2,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(24.h, 12.v, 16.h, 12.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgBook1,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            contentPadding: EdgeInsets.only(
              top: 14.v,
              right: 30.h,
              bottom: 14.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
            fillColor: appTheme.whiteA700,
          ),
          SizedBox(height: 16.v),
          CustomTextFormField(
            controller: biologyController,
            hintText: "Biology",
            hintStyle: CustomTextStyles.titleMediumLatoGray700_2,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(24.h, 12.v, 16.h, 12.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgBook1,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            contentPadding: EdgeInsets.only(
              top: 14.v,
              right: 30.h,
              bottom: 14.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineIndigoA,
            fillColor: appTheme.whiteA700,
          ),
          SizedBox(height: 16.v),
          CustomTextFormField(
            controller: physicsController,
            hintText: "Physics",
            hintStyle: CustomTextStyles.titleMediumLatoGray700_2,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(24.h, 12.v, 16.h, 12.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgBook1,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            contentPadding: EdgeInsets.only(
              top: 14.v,
              right: 30.h,
              bottom: 14.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
            fillColor: appTheme.whiteA700,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddTopicSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add the topic to the booking",
              style: CustomTextStyles.titleMediumLatoGray9000118,
            ),
            SizedBox(height: 7.v),
            CustomTextFormField(
              controller: editTextController,
              borderDecoration: TextFormFieldStyleHelper.outlineDeepPurple,
              filled: false,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditTextSection(BuildContext context) {
    return SizedBox(
      height: 139.v,
      width: 414.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Wrap(
              runSpacing: 16.v,
              spacing: 16.h,
              children:
                  List<Widget>.generate(2, (index) => NinetyeightItemWidget()),
            ),
          ),
          _buildAddTopicSection(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAdditionalNotesSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: RichText(
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
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: CustomTextFormField(
              controller: editTextController1,
              textInputAction: TextInputAction.done,
              borderDecoration: TextFormFieldStyleHelper.outlineDeepPurple,
              filled: false,
            ),
          ),
        ],
      ),
    );
  }
}
