import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ShareBottomsheet extends StatelessWidget {
  const ShareBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 174.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL38,
      ),
      child: Container(
        height: 2.v,
        width: 26.h,
        decoration: BoxDecoration(
          color: appTheme.gray4007f,
          borderRadius: BorderRadius.circular(
            1.h,
          ),
        ),
      ),
    );
  }
}
