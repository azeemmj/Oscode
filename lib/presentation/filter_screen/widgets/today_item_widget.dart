import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';

// ignore: must_be_immutable
class TodayItemWidget extends StatelessWidget {
  const TodayItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 11.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Today",
        style: TextStyle(
          color: appTheme.gray60003,
          fontSize: 15.fSize,
          fontFamily: 'AirbnbCereal_W_Bk',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.primary,
      selectedColor: appTheme.indigoA20003,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.gray30002,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          10.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
