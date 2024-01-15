import '../frame_page/widgets/gamesonline_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_leading_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_subtitle.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_outlined_button.dart';
import 'package:oscode2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FramePage extends StatelessWidget {
  FramePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController updateValueController = TextEditingController();

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  TextEditingController musicController = TextEditingController();

  TextEditingController thumbsUpController = TextEditingController();

  TextEditingController clockController = TextEditingController();

  TextEditingController settingsController = TextEditingController();

  TextEditingController tablerbrandlinkedinController = TextEditingController();

  TextEditingController iconoirtwitterController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 24.v),
            child: Container(
              height: 1631.v,
              width: 317.h,
              margin: EdgeInsets.only(
                left: 29.h,
                right: 29.h,
                bottom: 5.v,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 59.h),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup122,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage89,
                            height: 96.adaptSize,
                            width: 96.adaptSize,
                            radius: BorderRadius.circular(
                              48.h,
                            ),
                          ),
                          SizedBox(height: 19.v),
                          Text(
                            "Anubhav Dwivedi",
                            style: theme.textTheme.headlineSmall,
                          ),
                          SizedBox(height: 19.v),
                          _buildUpdateButton(context),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildUpdateValue(context),
                        SizedBox(height: 16.v),
                        _buildFullName(context),
                        SizedBox(height: 16.v),
                        _buildEmail(context),
                        SizedBox(height: 16.v),
                        _buildMobileNumber(context),
                        SizedBox(height: 16.v),
                        _buildName(context),
                        SizedBox(height: 16.v),
                        _buildLocation(context),
                        SizedBox(height: 16.v),
                        _buildMusic(context),
                        SizedBox(height: 16.v),
                        _buildThumbsUp(context),
                        SizedBox(height: 16.v),
                        _buildInstagramInfo(
                          context,
                          infoImage: ImageConstant.imgCalendarBlueGray40001,
                          instagramLabel: "Passout Year",
                        ),
                        SizedBox(height: 16.v),
                        _buildClock(context),
                        SizedBox(height: 16.v),
                        _buildSettings(context),
                        SizedBox(height: 20.v),
                        _buildFrame(context),
                        SizedBox(height: 20.v),
                        _buildTablerBrandLinkedin(context),
                        SizedBox(height: 20.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Events attended",
                            style: CustomTextStyles.titleMediumBluegray900,
                          ),
                        ),
                        SizedBox(height: 27.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Your badges",
                            style: CustomTextStyles.titleMediumBluegray900,
                          ),
                        ),
                      ],
                    ),
                  ),
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
        text: "Profile",
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildUpdateButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 50.v,
      text: "Update",
      margin: EdgeInsets.only(
        left: 20.h,
        right: 24.h,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 25.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup33562,
          height: 22.adaptSize,
          width: 22.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineIndigoA,
      buttonTextStyle: CustomTextStyles.bodyLargeAirbnbCerealWBkIndigoA20003,
    );
  }

  /// Section Widget
  Widget _buildUpdateValue(BuildContext context) {
    return CustomTextFormField(
      controller: updateValueController,
      hintText: "About me",
      hintStyle: CustomTextStyles.bodyMediumGray600,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(15.h, 17.v, 14.h, 30.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLock,
          height: 22.adaptSize,
          width: 22.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 91.v,
      ),
      contentPadding: EdgeInsets.only(
        top: 36.v,
        right: 30.h,
        bottom: 36.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return CustomTextFormField(
      controller: fullNameController,
      hintText: "Full name",
      hintStyle: CustomTextStyles.bodyMediumGray600,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(15.h, 17.v, 14.h, 17.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLock,
          height: 22.adaptSize,
          width: 22.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "abc@email.com",
      hintStyle: CustomTextStyles.bodyMediumGray600,
      textInputType: TextInputType.emailAddress,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(15.h, 17.v, 14.h, 17.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgCheckmark,
          height: 22.adaptSize,
          width: 22.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildMobileNumber(BuildContext context) {
    return CustomTextFormField(
      controller: mobileNumberController,
      hintText: "Mobile Number",
      hintStyle: CustomTextStyles.bodyMediumGray600,
      textInputType: TextInputType.phone,
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
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
      controller: nameController,
      hintText: "College name",
      hintStyle: CustomTextStyles.bodyMediumGray600,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(15.h, 17.v, 12.h, 15.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgThumbsupBlueGray40001,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildLocation(BuildContext context) {
    return CustomTextFormField(
      controller: locationController,
      hintText: "Location",
      hintStyle: CustomTextStyles.bodyMediumGray600,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(14.h, 16.v, 13.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgSettingsBlueGray40001,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildMusic(BuildContext context) {
    return CustomTextFormField(
      controller: musicController,
      hintText: "Qualification",
      hintStyle: CustomTextStyles.bodyMediumGray600,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(15.h, 17.v, 12.h, 15.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgMusic,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildThumbsUp(BuildContext context) {
    return CustomTextFormField(
      controller: thumbsUpController,
      hintText: "Degree",
      hintStyle: CustomTextStyles.bodyMediumGray600,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(15.h, 17.v, 12.h, 15.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgThumbsupBlueGray4000124x24,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildClock(BuildContext context) {
    return CustomTextFormField(
      controller: clockController,
      hintText: "Resume Link (gdrive  public link)",
      hintStyle: CustomTextStyles.bodyMediumGray600,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(15.h, 17.v, 12.h, 15.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgClock,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildSettings(BuildContext context) {
    return CustomTextFormField(
      controller: settingsController,
      hintText: "Portfolio Links",
      hintStyle: CustomTextStyles.bodyMediumGray600,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(15.h, 17.v, 12.h, 15.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgSettingsBlueGray4000124x24,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 24.v,
          width: 67.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Interest",
                  style: CustomTextStyles.titleMediumBluegray900,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Interest",
                  style: CustomTextStyles.titleMediumBluegray900,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 14.v),
        Wrap(
          runSpacing: 7.v,
          spacing: 7.h,
          children:
              List<Widget>.generate(6, (index) => GamesonlineItemWidget()),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTablerBrandLinkedin(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Social Links",
            style: CustomTextStyles.titleMediumBluegray900,
          ),
        ),
        SizedBox(height: 21.v),
        CustomTextFormField(
          controller: tablerbrandlinkedinController,
          hintText: "LinkedIn",
          hintStyle: CustomTextStyles.bodyMediumGray600,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(15.h, 17.v, 12.h, 15.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgTablerbrandlinkedin,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
        ),
        SizedBox(height: 16.v),
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          color: theme.colorScheme.primary,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: appTheme.gray30001,
              width: 1.h,
            ),
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Container(
            height: 56.v,
            width: 317.h,
            decoration: AppDecoration.outlineGray30001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 51.h),
                    child: Text(
                      "Instagram",
                      style: CustomTextStyles.bodyMediumGray600,
                    ),
                  ),
                ),
                _buildInstagramInfo(
                  context,
                  infoImage: ImageConstant.imgInfo,
                  instagramLabel: "Instagram",
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 16.v),
        _buildInstagramInfo(
          context,
          infoImage: ImageConstant.imgFacebook,
          instagramLabel: "Facebook",
        ),
        SizedBox(height: 16.v),
        CustomTextFormField(
          controller: iconoirtwitterController,
          hintText: "Twitter",
          hintStyle: CustomTextStyles.bodyMediumGray600,
          textInputAction: TextInputAction.done,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(15.h, 17.v, 12.h, 15.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconoirtwitter,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildInstagramInfo(
    BuildContext context, {
    required String infoImage,
    required String instagramLabel,
  }) {
    return Container(
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.outlineGray300011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: infoImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(top: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 4.v,
              bottom: 2.v,
            ),
            child: Text(
              instagramLabel,
              style: CustomTextStyles.bodyMediumGray600.copyWith(
                color: appTheme.gray600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
