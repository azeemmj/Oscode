import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_checkbox_button.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';
import 'package:oscode2/widgets/custom_text_form_field.dart';

class Iphone11ProMaxNineteenScreen extends StatelessWidget {
  Iphone11ProMaxNineteenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController expirydateController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  bool saveCardDetails = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 24.v),
            child: Column(
              children: [
                _buildScheduleSession(context),
                SizedBox(height: 34.v),
                _buildNameOnCard(context),
                SizedBox(height: 17.v),
                _buildCardNumber(context),
                SizedBox(height: 17.v),
                _buildExpirydate(context),
                SizedBox(height: 16.v),
                _buildSaveCardDetails(context),
                SizedBox(height: 83.v),
                CustomElevatedButton(
                  height: 48.v,
                  text: "Pay now",
                  margin: EdgeInsets.symmetric(horizontal: 24.h),
                  buttonStyle: CustomButtonStyles.fillIndigoA,
                ),
                SizedBox(height: 159.v),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle201,
                  height: 68.v,
                  width: 414.h,
                ),
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
      height: 64.v,
      leadingWidth: 414.h,
      leading: AppbarLeadingIconbutton(
        margin: EdgeInsets.fromLTRB(24.h, 8.v, 350.h, 8.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildScheduleSession(BuildContext context) {
    return SizedBox(
      height: 48.v,
      width: 365.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgScheduleDeepPurple10001,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                SizedBox(height: 7.v),
                Text(
                  "Schedule session",
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 135.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPreviewDeepPurple10001,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "Review",
                    style: theme.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPayments,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                SizedBox(height: 5.v),
                Text(
                  "Payment",
                  style: CustomTextStyles.titleSmallGray90001_1,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 16.v),
              child: SizedBox(
                width: 197.h,
                child: Divider(
                  color: appTheme.deepPurple200,
                  indent: 66.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 14.v),
              child: SizedBox(
                width: 144.h,
                child: Divider(
                  color: appTheme.deepPurple200,
                  endIndent: 38.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNameOnCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Name on card",
              style: CustomTextStyles.titleMediumLatoGray9000118,
            ),
          ),
          SizedBox(height: 8.v),
          CustomTextFormField(
            controller: nameController,
            hintText: "David Durotaye",
            contentPadding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 15.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineDeepPurple,
            filled: false,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCardNumber(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Card number",
              style: CustomTextStyles.titleMediumLatoGray9000118,
            ),
          ),
          SizedBox(height: 8.v),
          CustomTextFormField(
            controller: cardNumberController,
            hintText: "01284998777",
            textInputType: TextInputType.phone,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 15.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineDeepPurple,
            filled: false,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildExpiryDate(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 1.v),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Expiry date",
                    style: CustomTextStyles.titleMediumLatoGray90001,
                  ),
                  TextSpan(
                    text: " (MM/YY)",
                    style: CustomTextStyles.titleSmallGray90001,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 7.v),
          CustomTextFormField(
            width: 174.h,
            controller: expirydateController,
            hintText: "02/12",
            contentPadding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 15.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineDeepPurple,
            filled: false,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCvv(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "CVV",
              style: CustomTextStyles.titleMediumLatoGray9000118,
            ),
          ),
          SizedBox(height: 8.v),
          CustomTextFormField(
            width: 174.h,
            controller: cvvController,
            hintText: "012",
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 15.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineDeepPurple,
            filled: false,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildExpirydate(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildExpiryDate(context),
          _buildCvv(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveCardDetails(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "Save card details",
          value: saveCardDetails,
          padding: EdgeInsets.symmetric(vertical: 9.v),
          textStyle: CustomTextStyles.titleMediumLatoGray90001_1,
          onChange: (value) {
            saveCardDetails = value;
          },
        ),
      ),
    );
  }
}
