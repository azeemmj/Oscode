import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  const ViewhierarchyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 63.h,
      child: Column(
        children: [
          Container(
            decoration: AppDecoration.fillIndigoA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder31,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup18217,
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    top: 16.v,
                    bottom: 17.v,
                  ),
                ),
                Container(
                  height: 63.adaptSize,
                  width: 63.adaptSize,
                  margin: EdgeInsets.only(left: 293.h),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      31.h,
                    ),
                    border: Border.all(
                      color: appTheme.gray30004,
                      width: 1.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Text(
            "games",
            style: CustomTextStyles.bodyMediumGray90003_1,
          ),
        ],
      ),
    );
  }
}
