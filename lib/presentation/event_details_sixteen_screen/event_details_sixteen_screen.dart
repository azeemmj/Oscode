import '../event_details_sixteen_screen/widgets/expertiseselection_item_widget.dart';
import '../event_details_sixteen_screen/widgets/frame4_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/app_bar/appbar_image.dart';
import 'package:oscode2/widgets/app_bar/appbar_title_image.dart';
import 'package:oscode2/widgets/app_bar/custom_app_bar.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';

class EventDetailsSixteenScreen extends StatelessWidget {
  const EventDetailsSixteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      appBar: _buildAppBar(context),
      body: SizedBox(
        width: SizeUtils.width,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 33.v),
          child: Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              right: 25.h,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Let‘s add some services",
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 10.v),
                Opacity(
                  opacity: 0.84,
                  child: Container(
                    width: 286.h,
                    margin: EdgeInsets.only(right: 38.h),
                    child: Text(
                      "We‘ll help you get set up based on your expertise",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumBluegray40001.copyWith(
                        height: 1.33,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 22.v),
                Text(
                  "Select your expertise",
                  style: CustomTextStyles.titleMediumGray900,
                ),
                SizedBox(height: 13.v),
                _buildExpertiseSelection(context),
                SizedBox(height: 25.v),
                _buildPopularServices(context),
                SizedBox(height: 42.v),
                GestureDetector(
                  onTap: () {
                    // Navigate to the next page using AppRoutes
                    Navigator.pushNamed(context, AppRoutes.eventDetailsTwelveScreen);
                  },
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
                            "Next".toUpperCase(),
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
        ),
      ),
    ),
  );
}

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 69.v,
      leadingWidth: 51.h,
      leading: Container(
        margin: EdgeInsets.only(
          left: 28.h,
          top: 16.v,
          bottom: 16.v,
        ),
        padding: EdgeInsets.all(5.h),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          children: [
            SizedBox(height: 1.v),
            AppbarImage(
              imagePath: ImageConstant.imgFiCheck,
              margin: EdgeInsets.only(left: 2.h),
            ),
          ],
        ),
      ),
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgUserYellow900,
        margin: EdgeInsets.only(left: 71.h),
      ),
      actions: [
        Container(
          height: 23.adaptSize,
          width: 23.adaptSize,
          margin: EdgeInsets.only(
            left: 29.h,
            top: 16.v,
            right: 16.h,
          ),
          decoration: BoxDecoration(
            color: appTheme.redA200,
            borderRadius: BorderRadius.circular(
              11.h,
            ),
            border: Border.all(
              color: appTheme.black900,
              width: 1.h,
            ),
          ),
        ),
        Container(
          height: 23.adaptSize,
          width: 23.adaptSize,
          margin: EdgeInsets.only(
            left: 71.h,
            top: 16.v,
            right: 45.h,
          ),
          decoration: BoxDecoration(
            color: appTheme.redA200,
            borderRadius: BorderRadius.circular(
              11.h,
            ),
            border: Border.all(
              color: appTheme.black900,
              width: 1.h,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildExpertiseSelection(BuildContext context) {
    return Wrap(
      runSpacing: 10.v,
      spacing: 10.h,
      children:
          List<Widget>.generate(13, (index) => ExpertiseselectionItemWidget()),
    );
  }

  /// Section Widget
  Widget _buildPopularServices(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Popular ",
                style: CustomTextStyles.titleMediumGray900_1,
              ),
              TextSpan(
                text: "1:1 services",
                style: CustomTextStyles.titleMediumGray900_1,
              ),
              TextSpan(
                text: " ",
              ),
              TextSpan(
                text: "in your expertise",
                style: CustomTextStyles.titleMediumGray900_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 13.v),
        Wrap(
          runSpacing: 16.v,
          spacing: 16.h,
          children: List<Widget>.generate(8, (index) => Frame4ItemWidget()),
        ),
      ],
    );
  }
}
