import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';

// ignore: must_be_immutable
class ExpertiseselectionItemWidget extends StatelessWidget {
  const ExpertiseselectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 25.h,
          vertical: 13.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "Cybersecurity",
          style: TextStyle(
            color: appTheme.gray900,
            fontSize: 14.fSize,
            fontFamily: 'AirbnbCereal_W_Bk',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.gray900.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.gray300,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            3.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
