import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';
import 'package:oscode2/widgets/custom_text_form_field.dart';

class RessetPasswordScreen extends StatelessWidget {
  RessetPasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildArrowLeftStack(context),
                SizedBox(height: 23.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 28.h,
                            right: 30.h,
                          ),
                          child: CustomTextFormField(
                            controller: passwordController,
                            hintText: "abc@email.com",
                            hintStyle: CustomTextStyles.bodyMediumGray600,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.emailAddress,
                            prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(15.h, 17.v, 14.h, 17.v),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgCheckmark,
                                height: 22.adaptSize,
                                width: 22.adaptSize,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: 56.v,
                            ),
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
                                  "send".toUpperCase(),
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 127.v),
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Opacity(
                                opacity: 0.4,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgEllipse712,
                                  height: 173.v,
                                  width: 82.h,
                                  margin: EdgeInsets.only(top: 249.v),
                                ),
                              ),
                              Opacity(
                                opacity: 0.5,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgEllipse701,
                                  height: 362.v,
                                  width: 66.h,
                                  margin: EdgeInsets.only(bottom: 60.v),
                                ),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowLeftStack(BuildContext context) {
    return SizedBox(
      height: 146.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topRight,
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
                      imagePath: ImageConstant.imgEllipse661,
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
          Opacity(
            opacity: 0.7,
            child: CustomImageView(
              imagePath: ImageConstant.imgEllipse691,
              height: 90.v,
              width: 177.h,
              alignment: Alignment.topRight,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 28.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Resset Password",
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 14.v),
                  SizedBox(
                    width: 235.h,
                    child: Text(
                      "Please enter your email address to request a password reset",
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
          ),
        ],
      ),
    );
  }
}
