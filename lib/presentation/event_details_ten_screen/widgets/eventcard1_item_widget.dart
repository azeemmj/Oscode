import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Eventcard1ItemWidget extends StatelessWidget {
  const Eventcard1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButton(
          height: 48.adaptSize,
          width: 48.adaptSize,
          padding: EdgeInsets.all(9.h),
          decoration: IconButtonStyleHelper.fillIndigoATL12,
          child: CustomImageView(
            imagePath: ImageConstant.imgCalendarIndigoA20003,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 2.v,
            ),
            child: Column(
              children: [
                Opacity(
                  opacity: 0.84,
                  child: Text(
                    "14 December, 2023",
                    style: CustomTextStyles.titleMediumGray90003_3,
                  ),
                ),
                SizedBox(height: 6.v),
                Text(
                  "Saturday, 4:00PM - 9:00PM",
                  style: CustomTextStyles.bodySmallGray600,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
