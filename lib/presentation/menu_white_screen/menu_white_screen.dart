import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';

class MenuWhiteScreen extends StatelessWidget {
  const MenuWhiteScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 43.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 2.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildSignOutSection(context),
                    Container(
                      height: 679.v,
                      width: 124.h,
                      margin: EdgeInsets.symmetric(vertical: 22.v),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Opacity(
                            opacity: 0.2,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgRectangle4161,
                              height: 580.v,
                              width: 124.h,
                              alignment: Alignment.center,
                            ),
                          ),
                          Opacity(
                            opacity: 0.2,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgRectangle4159,
                              height: 630.v,
                              width: 109.h,
                              alignment: Alignment.centerRight,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgHome1,
                            height: 679.v,
                            width: 88.h,
                            radius: BorderRadius.circular(
                              40.h,
                            ),
                            alignment: Alignment.centerRight,
                          ),
                        ],
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

  /// Section Widget
  Widget _buildSignOutSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle4158,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
        SizedBox(height: 12.v),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            "Anubhav Dwivedi",
            style: CustomTextStyles.titleMediumBlack90019,
          ),
        ),
        SizedBox(height: 49.v),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLockGray60002,
                height: 23.adaptSize,
                width: 23.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 2.v,
                ),
                child: Text(
                  "My Profile",
                  style: CustomTextStyles.bodyLargeAirbnbCerealWBk,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 36.v),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup18858,
                height: 23.adaptSize,
                width: 23.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Text(
                  "Calender",
                  style: CustomTextStyles.bodyLargeAirbnbCerealWBk,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 36.v),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgTelevision,
                height: 23.adaptSize,
                width: 23.adaptSize,
                margin: EdgeInsets.only(bottom: 1.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 13.h,
                  top: 3.v,
                ),
                child: Text(
                  "My Booked Events",
                  style: CustomTextStyles.bodyLargeAirbnbCerealWBk,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 36.v),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLockGray6000223x23,
                height: 23.adaptSize,
                width: 23.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Text(
                  "Contact Us",
                  style: CustomTextStyles.bodyLargeAirbnbCerealWBk,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 37.v),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSearch,
                height: 23.adaptSize,
                width: 23.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 2.v,
                ),
                child: Text(
                  "Settings",
                  style: CustomTextStyles.bodyLargeAirbnbCerealWBk,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 35.v),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLockBlueGray40001,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 13.h),
                child: Text(
                  "Become a mentor",
                  style: CustomTextStyles.bodyLargeAirbnbCerealWBk,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 36.v),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgProfile,
                height: 23.adaptSize,
                width: 23.adaptSize,
                margin: EdgeInsets.only(bottom: 1.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 3.v,
                ),
                child: Text(
                  "Helps & FAQs",
                  style: CustomTextStyles.bodyLargeAirbnbCerealWBk,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomElevatedButton(
          height: 46.v,
          width: 150.h,
          text: "Sign Out",
          leftIcon: Container(
            margin: EdgeInsets.only(right: 14.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowright,
              height: 23.adaptSize,
              width: 23.adaptSize,
            ),
          ),
          buttonStyle: CustomButtonStyles.fillRedA,
          buttonTextStyle: CustomTextStyles.bodyLargeAirbnbCerealWBkRedA200,
          alignment: Alignment.center,
        ),
      ],
    );
  }
}
