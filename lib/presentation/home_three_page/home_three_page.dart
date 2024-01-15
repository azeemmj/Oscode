import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';
import 'package:oscode2/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class HomeThreePage extends StatefulWidget {
  const HomeThreePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeThreePageState createState() => HomeThreePageState();
}

class HomeThreePageState extends State<HomeThreePage>
    with AutomaticKeepAliveClientMixin<HomeThreePage> {
  String radioGroup = "";

  String radioGroup1 = "";

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.h),
                      decoration: AppDecoration.fillBlue,
                      child: Container(
                        margin: EdgeInsets.only(right: 182.h),
                        padding: EdgeInsets.all(9.h),
                        decoration: AppDecoration.outlineBlueGrayF.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder19,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: appTheme.orange300,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Container(
                                height: 131.v,
                                width: 155.h,
                                padding: EdgeInsets.symmetric(horizontal: 9.h),
                                decoration:
                                    AppDecoration.fillOrange300.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage91,
                                      height: 131.v,
                                      width: 132.h,
                                      radius: BorderRadius.circular(
                                        10.h,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 8.v),
                                      child: CustomIconButton(
                                        height: 30.adaptSize,
                                        width: 30.adaptSize,
                                        padding: EdgeInsets.all(7.h),
                                        decoration:
                                            IconButtonStyleHelper.fillPrimary,
                                        alignment: Alignment.topRight,
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgUserRed40001,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 13.v),
                            Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: Text(
                                "Ibrahim Hassan",
                                style: CustomTextStyles.titleMediumBlack90018,
                              ),
                            ),
                            SizedBox(height: 9.v),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgGroupPrimary,
                                      height: 24.v,
                                      width: 56.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 4.v,
                                        bottom: 3.v,
                                      ),
                                      child: Text(
                                        "100+ Session",
                                        style: CustomTextStyles
                                            .labelLargeAirbnbCerealWMdIndigoA700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10.v),
                            _buildRecentOrders(context),
                            SizedBox(height: 8.v),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 55.v),
                    _buildUserProfile(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: CustomRadioButton(
          text: "Pune, India",
          value: "Pune, India",
          groupValue: radioGroup,
          textStyle: CustomTextStyles.bodyMediumBluegray90001,
          onChange: (value) {
            radioGroup = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 92.v,
            width: 79.h,
            decoration: AppDecoration.fillOrange.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage88,
              height: 92.v,
              width: 79.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 5.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1st  May- Sat -2:00 PM\r".toUpperCase(),
                  style: CustomTextStyles.labelLargeAirbnbCerealWMdIndigoA20003,
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 191.h,
                  child: Text(
                    "International kids safe parents night out",
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallAirbnbCerealWMdGray90003,
                  ),
                ),
                SizedBox(height: 7.v),
                CustomRadioButton(
                  text: "Radius Gallery • Santa Cruz",
                  value: "Radius Gallery • Santa Cruz",
                  groupValue: radioGroup1,
                  onChange: (value) {
                    radioGroup1 = value;
                  },
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBookmarkSecondarycontainer,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              right: 4.h,
              bottom: 72.v,
            ),
          ),
        ],
      ),
    );
  }
}
