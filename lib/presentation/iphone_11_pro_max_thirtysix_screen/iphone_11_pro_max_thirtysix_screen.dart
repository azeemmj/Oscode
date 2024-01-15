import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';
import 'package:oscode2/widgets/custom_text_form_field.dart';

class Iphone11ProMaxThirtysixScreen extends StatelessWidget {
  Iphone11ProMaxThirtysixScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: 414.h,
            child: SingleChildScrollView(
              child: SizedBox(
                height: 853.v,
                width: 414.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    _buildUserProfile(context),
                    Opacity(
                      opacity: 0.5,
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 853.v,
                          width: 414.h,
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.53),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 23.h,
          top: 24.v,
          right: 23.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 40.adaptSize,
              width: 40.adaptSize,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 1.h),
            ),
            SizedBox(height: 24.v),
            CustomTextFormField(
              controller: nameController,
              hintText: "Search your subject,name",
              textInputAction: TextInputAction.done,
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 12.v, 24.h, 12.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgMenu,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 48.v,
              ),
              contentPadding: EdgeInsets.only(
                left: 24.h,
                top: 15.v,
                bottom: 15.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.outlineDeepPurple,
              filled: false,
            ),
            SizedBox(height: 32.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(
                    height: 40.v,
                    width: 175.h,
                    text: "Upcoming session",
                  ),
                  CustomElevatedButton(
                    height: 40.v,
                    width: 159.h,
                    text: "Pending session",
                    buttonStyle: CustomButtonStyles.fillBlueTL8,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumLatoIndigoA2000318,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.h),
                    child: _buildRecentOrders(
                      context,
                      userName: "Omowumi John",
                      userSubject: "Biology",
                      eventTime: "1:00pm",
                      eventDate: "Fri 24 june",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: _buildRecentOrders(
                      context,
                      userName: "Chinere Njoku",
                      userSubject: "Chemistry",
                      eventTime: "3:00pm",
                      eventDate: "Fri 24 june",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildRecentOrders(
    BuildContext context, {
    required String userName,
    required String userSubject,
    required String eventTime,
    required String eventDate,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAlexRobinsonR56x56,
                height: 56.adaptSize,
                width: 56.adaptSize,
                radius: BorderRadius.circular(
                  28.h,
                ),
              ),
              SizedBox(height: 11.v),
              Text(
                userName,
                style: CustomTextStyles.titleMediumLatoBlack900_1.copyWith(
                  color: appTheme.black900,
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                userSubject,
                style: CustomTextStyles.titleMediumLatoIndigoA20003_1.copyWith(
                  color: appTheme.indigoA20003,
                ),
              ),
              SizedBox(height: 6.v),
              Container(
                width: 122.h,
                margin: EdgeInsets.only(right: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      eventTime,
                      style: theme.textTheme.titleSmall!.copyWith(
                        color: appTheme.gray700,
                      ),
                    ),
                    Text(
                      eventDate,
                      style: theme.textTheme.titleSmall!.copyWith(
                        color: appTheme.gray700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
