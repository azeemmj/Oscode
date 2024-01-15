import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';

// ignore: must_be_immutable
class CalendarItemWidget extends StatelessWidget {
  const CalendarItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.outlineIndigoA20003.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 84.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Fri",
            style: CustomTextStyles.titleMediumLatoGray90001_1,
          ),
          SizedBox(height: 7.v),
          Text(
            "24 june",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 4.v),
          Text(
            "2 slots",
            style: CustomTextStyles.titleMediumLatoIndigoA2000318,
          ),
        ],
      ),
    );
  }
}
