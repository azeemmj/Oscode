import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';

// ignore: must_be_immutable
class VerificationoneItemWidget extends StatelessWidget {
  const VerificationoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 117.h,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Text(
        "1",
        style: CustomTextStyles.headlineSmallSFProDisplayBlack900,
      ),
    );
  }
}
