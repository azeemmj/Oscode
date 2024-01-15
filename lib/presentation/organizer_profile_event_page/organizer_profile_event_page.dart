import '../organizer_profile_event_page/widgets/card1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class OrganizerProfileEventPage extends StatefulWidget {
  const OrganizerProfileEventPage({Key? key})
      : super(
          key: key,
        );

  @override
  OrganizerProfileEventPageState createState() =>
      OrganizerProfileEventPageState();
}

class OrganizerProfileEventPageState extends State<OrganizerProfileEventPage>
    with AutomaticKeepAliveClientMixin<OrganizerProfileEventPage> {
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
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20.v),
          Container(
            height: 624.v,
            width: 330.h,
            margin: EdgeInsets.only(
              left: 21.h,
              right: 24.h,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 109.v,
                    width: 324.h,
                    margin: EdgeInsets.only(bottom: 156.v),
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
                              _buildTimeRow(
                                context,
                                timeText: "10 June •\r9:00 PM",
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
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 109.v,
                    width: 324.h,
                    margin: EdgeInsets.only(bottom: 35.v),
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
                              _buildTimeRow(
                                context,
                                timeText: "10 June •\r9:00 PM",
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
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(right: 3.h),
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          height: 16.v,
                        );
                      },
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Card1ItemWidget();
                      },
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

  /// Common widget
  Widget _buildTimeRow(
    BuildContext context, {
    required String timeText,
  }) {
    return Row(
      children: [
        Text(
          timeText,
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
