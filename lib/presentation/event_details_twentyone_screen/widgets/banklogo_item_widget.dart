import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';

// ignore: must_be_immutable
class BanklogoItemWidget extends StatelessWidget {
  const BanklogoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgContrast,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 10.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage5,
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(left: 15.h),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 7.v,
              bottom: 8.v,
            ),
            child: Text(
              "State Bank of India",
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
