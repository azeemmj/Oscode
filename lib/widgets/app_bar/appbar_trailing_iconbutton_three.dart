import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';
import 'package:oscode2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbuttonThree extends StatelessWidget {
  AppbarTrailingIconbuttonThree({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 36.adaptSize,
          width: 36.adaptSize,
          decoration: IconButtonStyleHelper.fillBlue,
          child: CustomImageView(
            imagePath: ImageConstant.imgPhone,
          ),
        ),
      ),
    );
  }
}
