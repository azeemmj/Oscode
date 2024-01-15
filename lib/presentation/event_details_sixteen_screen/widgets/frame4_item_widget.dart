import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';

// ignore: must_be_immutable
class Frame4ItemWidget extends StatelessWidget {
  const Frame4ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 15.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Quick chat",
        style: TextStyle(
          color: appTheme.gray900,
          fontSize: 13.fSize,
          fontFamily: 'AirbnbCereal_W_Bk',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.primary,
      selectedColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.gray300,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          4.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
