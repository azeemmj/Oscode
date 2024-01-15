import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_radio_button.dart';
import 'package:readmore/readmore.dart';

// ignore_for_file: must_be_immutable
class OrganizerProfileAboutPage extends StatefulWidget {
  const OrganizerProfileAboutPage({Key? key})
      : super(
          key: key,
        );

  @override
  OrganizerProfileAboutPageState createState() =>
      OrganizerProfileAboutPageState();
}

class OrganizerProfileAboutPageState extends State<OrganizerProfileAboutPage>
    with AutomaticKeepAliveClientMixin<OrganizerProfileAboutPage> {
  String radioGroup = "";

  String radioGroup1 = "";

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
  Widget _buildReadMoreText(BuildContext context) {
    return SizedBox(
      width: 319.h,
      child: ReadMoreText(
        "Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. ",
        trimLines: 4,
        colorClickableText: appTheme.indigoA20003,
        trimMode: TrimMode.Line,
        trimCollapsedText: "Read More",
        moreStyle:
            CustomTextStyles.bodyLargeAirbnbCerealWBkBluegray80001.copyWith(
          height: 1.56,
        ),
        lessStyle:
            CustomTextStyles.bodyLargeAirbnbCerealWBkBluegray80001.copyWith(
          height: 1.56,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: Column(
              children: [
                _buildReadMoreText(context),
                SizedBox(height: 257.v),
                SizedBox(
                  height: 109.v,
                  width: 324.h,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineGray20002.copyWith(
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
                            _buildRowWithTextAndImage(
                              context,
                              dynamicText: "10 June •\r9:00 PM",
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
                SizedBox(height: 12.v),
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
                            _buildRowWithTextAndImage(
                              context,
                              dynamicText: "10 June •\r9:00 PM",
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
                              groupValue: radioGroup1,
                              textStyle: CustomTextStyles.bodyMediumGray50003,
                              onChange: (value) {
                                radioGroup1 = value;
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
  Widget _buildRowWithTextAndImage(
    BuildContext context, {
    required String dynamicText,
  }) {
    return Row(
      children: [
        Text(
          dynamicText,
          style: CustomTextStyles.labelLargeAirbnbCerealWMdIndigoA700Medium
              .copyWith(
            color: appTheme.indigoA700,
          ),
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
    );
  }
}
