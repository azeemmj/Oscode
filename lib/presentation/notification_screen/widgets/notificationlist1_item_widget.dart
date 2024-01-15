import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_elevated_button.dart';
import 'package:oscode2/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Notificationlist1ItemWidget extends StatelessWidget {
  const Notificationlist1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPlay,
          height: 45.adaptSize,
          width: 45.adaptSize,
          margin: EdgeInsets.only(bottom: 48.v),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 187.h,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "David Silbia",
                      style: CustomTextStyles
                          .titleSmallAirbnbCerealWMdOnPrimaryContainer,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "Career Guidance Seminar registration done",
                      style: CustomTextStyles.bodyMediumBluegray80001,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 11.v),
            SizedBox(
              width: 203.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomOutlinedButton(
                      height: 36.v,
                      text: "Cancel",
                      margin: EdgeInsets.only(right: 6.h),
                      buttonStyle: CustomButtonStyles.outlineGrayTL6,
                      buttonTextStyle: CustomTextStyles.bodyMediumGray60001,
                    ),
                  ),
                  Expanded(
                    child: CustomElevatedButton(
                      height: 36.v,
                      text: "View",
                      margin: EdgeInsets.only(left: 6.h),
                      buttonStyle: CustomButtonStyles.fillIndigoATL6,
                      buttonTextStyle: CustomTextStyles.bodyMediumPrimary_1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 72.v,
          ),
          child: Text(
            "Just now",
            style: CustomTextStyles.bodySmallBluegray80001,
          ),
        ),
      ],
    );
  }
}
