import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofilegridItemWidget extends StatelessWidget {
  const UserprofilegridItemWidget({Key? key})
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: appTheme.blue40001,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 131.v,
              width: 155.h,
              decoration: AppDecoration.fillBlue40001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage90,
                    height: 131.v,
                    width: 155.h,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8.v,
                      right: 9.h,
                    ),
                    child: CustomIconButton(
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      decoration: IconButtonStyleHelper.fillPrimary,
                      alignment: Alignment.topRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgBookmarkBlueGray40001,
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
              "Omowumi John",
              style: CustomTextStyles.titleMediumBlack90018,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Row(
              children: [
                Text(
                  "1:00pm",
                  style: theme.textTheme.titleSmall,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "Fri 24 june",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
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
                      "Pune, India",
                      style: CustomTextStyles.bodyMediumBluegray90001,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 8.v),
        ],
      ),
    );
  }
}
