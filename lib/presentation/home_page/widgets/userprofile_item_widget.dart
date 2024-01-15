import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9.h),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      width: 237.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: appTheme.orange200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 131.v,
              width: 218.h,
              decoration: AppDecoration.fillOrange.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup80,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage84131x218,
                    height: 131.v,
                    width: 218.h,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(8.h, 8.v, 8.h, 75.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 47.v,
                            width: 45.h,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    height: 45.adaptSize,
                                    width: 45.adaptSize,
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary
                                          .withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(
                                        10.h,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                    width: 26.h,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "10\n".toUpperCase(),
                                            style: CustomTextStyles
                                                .titleMediumRed40002,
                                          ),
                                          TextSpan(
                                            text: "June".toUpperCase(),
                                            style: CustomTextStyles
                                                .labelMediumAirbnbCerealWMdRed40002,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 17.v),
                            child: CustomIconButton(
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              padding: EdgeInsets.all(7.h),
                              decoration: IconButtonStyleHelper.fillPrimary,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgUserRed40001,
                              ),
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
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Text(
              "International Band Mu...",
              style: CustomTextStyles.titleMediumBlack90018,
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroupPrimary,
                  height: 24.v,
                  width: 56.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 5.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "+20 Going",
                    style: CustomTextStyles.labelLargeAirbnbCerealWMdIndigoA700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup6BlueGray500,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      "36 Guild Street Pune, India",
                      style: CustomTextStyles.bodyMediumBluegray90001,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
