import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_radio_button.dart';
import 'package:oscode2/widgets/custom_rating_bar.dart';

// ignore_for_file: must_be_immutable
class OrganizerProfileReviewPage extends StatefulWidget {
  const OrganizerProfileReviewPage({Key? key})
      : super(
          key: key,
        );

  @override
  OrganizerProfileReviewPageState createState() =>
      OrganizerProfileReviewPageState();
}

class OrganizerProfileReviewPageState extends State<OrganizerProfileReviewPage>
    with AutomaticKeepAliveClientMixin<OrganizerProfileReviewPage> {
  String radioGroup = "";

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup122,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: _buildScrollView(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPlay,
                      height: 34.adaptSize,
                      width: 34.adaptSize,
                      margin: EdgeInsets.only(bottom: 95.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text(
                                      "Rocks Velkeinjen",
                                      style: CustomTextStyles
                                          .titleMediumBlack90018,
                                    ),
                                  ),
                                  SizedBox(height: 1.v),
                                  CustomRatingBar(
                                    initialRating: 0,
                                    itemSize: 19,
                                    itemCount: 4,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 22.v),
                                child: Text(
                                  "10 Feb",
                                  style: CustomTextStyles.bodyMediumBluegray200,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.v),
                          Container(
                            width: 264.h,
                            margin: EdgeInsets.only(right: 13.h),
                            child: Text(
                              "Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumBlack90015
                                  .copyWith(
                                height: 1.67,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 19.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPlay,
                      height: 34.adaptSize,
                      width: 34.adaptSize,
                      margin: EdgeInsets.only(bottom: 95.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: _buildZeniferoBolex(
                              context,
                              zeniferoBolexText: "Angelina Zolly",
                              febCounterText: "10 Feb",
                            ),
                          ),
                          SizedBox(height: 1.v),
                          CustomRatingBar(
                            initialRating: 0,
                            itemSize: 19,
                            itemCount: 4,
                          ),
                          SizedBox(height: 9.v),
                          Container(
                            width: 264.h,
                            margin: EdgeInsets.only(
                              left: 2.h,
                              right: 13.h,
                            ),
                            child: Text(
                              "Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumBlack90015
                                  .copyWith(
                                height: 1.67,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 17.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPlay,
                      height: 34.adaptSize,
                      width: 34.adaptSize,
                      margin: EdgeInsets.only(
                        top: 1.v,
                        bottom: 35.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: _buildZeniferoBolex(
                              context,
                              zeniferoBolexText: "Zenifero Bolex",
                              febCounterText: "10 Feb",
                            ),
                          ),
                          SizedBox(height: 3.v),
                          CustomRatingBar(
                            initialRating: 0,
                            itemSize: 19,
                            itemCount: 4,
                          ),
                          SizedBox(height: 4.v),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.",
                              style: CustomTextStyles.bodyMediumBlack90015,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 104.v),
                SizedBox(
                  height: 109.v,
                  width: 324.h,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.all(8.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 1.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle,
                                height: 92.adaptSize,
                                width: 92.adaptSize,
                                radius: BorderRadius.circular(
                                  10.h,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "10 June •\r9:00 PM",
                                  style: CustomTextStyles
                                      .labelLargeAirbnbCerealWMdIndigoA700Medium,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgLightBulb,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 91.h,
                                    top: 3.v,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4.v),
                            SizedBox(
                              width: 203.h,
                              child: Text(
                                "International Gala Music Festival",
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .titleSmallAirbnbCerealWMdBlack900,
                              ),
                            ),
                            SizedBox(height: 11.v),
                            CustomRadioButton(
                              text: "36 Guild Street London, UK  ",
                              value: "36 Guild Street London, UK  ",
                              groupValue: radioGroup,
                              textStyle: CustomTextStyles.bodyMediumGray50003,
                              onChange: (value) {
                                radioGroup = value;
                              },
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
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildZeniferoBolex(
    BuildContext context, {
    required String zeniferoBolexText,
    required String febCounterText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          zeniferoBolexText,
          style: CustomTextStyles.titleMediumBlack90018.copyWith(
            color: appTheme.black900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(
            febCounterText,
            style: CustomTextStyles.bodyMediumBluegray200.copyWith(
              color: appTheme.blueGray200,
            ),
          ),
        ),
      ],
    );
  }
}
