import '../verification_one_screen/widgets/verificationone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';
import 'package:oscode2/widgets/custom_pin_code_text_field.dart';

class VerificationOneScreen extends StatelessWidget {
  const VerificationOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStackOne(context),
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 35.h),
                        child: CustomPinCodeTextField(
                          context: context,
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(height: 40.v),
                      SizedBox(
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
                                "Continue".toUpperCase(),
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 26.v),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Re-send code in ",
                              style: CustomTextStyles.bodyMediumGray9000315,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "0:20",
                              style:
                                  CustomTextStyles.bodyMediumIndigoA2000315_1,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 80.v),
                      SizedBox(
                        height: 422.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Opacity(
                              opacity: 0.5,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgEllipse70362x66,
                                height: 362.v,
                                width: 66.h,
                                alignment: Alignment.topRight,
                              ),
                            ),
                            Opacity(
                              opacity: 0.4,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgEllipse711,
                                height: 173.v,
                                width: 82.h,
                                alignment: Alignment.bottomLeft,
                              ),
                            ),
                            _buildKeyboardLightNumeric(context),
                          ],
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
    );
  }

  /// Section Widget
  Widget _buildStackOne(BuildContext context) {
    return SizedBox(
      height: 146.v,
      width: 302.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              height: 129.v,
              width: 135.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse66129x135,
                      height: 129.v,
                      width: 135.h,
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 24.h,
                        top: 9.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomAppBar(
                            height: 22.v,
                            leadingWidth: double.maxFinite,
                            leading: AppbarLeadingImage(
                              imagePath: ImageConstant.imgArrowLeftGray90003,
                              margin: EdgeInsets.only(
                                left: 24.h,
                                right: 329.h,
                              ),
                            ),
                          ),
                          SizedBox(height: 37.v),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgG430,
                                  height: 1.adaptSize,
                                  width: 1.adaptSize,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath534,
                                  height: 1.adaptSize,
                                  width: 1.adaptSize,
                                ),
                              ],
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
          Align(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Verification",
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 14.v),
                SizedBox(
                  width: 274.h,
                  child: Text(
                    "We’ve send you the verification code on email Id : anuXXXXXdi@gmail.com",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumGray90003.copyWith(
                      height: 1.67,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildKeyboardLightNumeric(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 6.h,
          top: 65.v,
          right: 6.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GridView.builder(
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
                return VerificationoneItemWidget();
              },
            ),
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
                      buttonTextStyle:
                          CustomTextStyles.headlineSmallSFProDisplayBlack900,
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
          ],
        ),
      ),
    );
  }
}
