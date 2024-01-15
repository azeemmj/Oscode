import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue50,
      );
  static BoxDecoration get fillBlue40001 => BoxDecoration(
        color: appTheme.blue40001,
      );
  static BoxDecoration get fillBlue5001 => BoxDecoration(
        color: appTheme.blue5001,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray10021,
      );
  static BoxDecoration get fillCyanA => BoxDecoration(
        color: appTheme.cyanA400.withOpacity(0.16),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray30003 => BoxDecoration(
        color: appTheme.gray30003,
      );
  static BoxDecoration get fillGray5001 => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA20003,
      );
  static BoxDecoration get fillIndigoA40001 => BoxDecoration(
        color: appTheme.indigoA40001,
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue100,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange200,
      );
  static BoxDecoration get fillOrange300 => BoxDecoration(
        color: appTheme.orange300,
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink100,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red300,
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA200.withOpacity(0.42),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal300,
      );
  static BoxDecoration get fillTeal600 => BoxDecoration(
        color: appTheme.teal600.withOpacity(0.42),
      );
  static BoxDecoration get fillTeal60001 => BoxDecoration(
        color: appTheme.teal60001.withOpacity(0.42),
      );
  static BoxDecoration get fillTeal600011 => BoxDecoration(
        color: appTheme.teal60001,
      );
  static BoxDecoration get fillTeal6001 => BoxDecoration(
        color: appTheme.teal600,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow900.withOpacity(0.42),
      );
  static BoxDecoration get fillYellow900 => BoxDecoration(
        color: appTheme.yellow900,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.green700,
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlue => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.blue50,
            width: 2.h,
          ),
        ),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray400,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGrayE => BoxDecoration(
        color: appTheme.red40002,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray9001e,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              6,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGrayF => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray6000f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray6000f01 => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray6000f01,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray60011 => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray60011,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray9001e => BoxDecoration(
        color: appTheme.deepOrange300,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray9001e,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              6,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray9001e1 => BoxDecoration(
        color: appTheme.tealA400,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray9001e,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              6,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineDeepPurple => BoxDecoration(
        color: appTheme.gray5001,
        border: Border(
          bottom: BorderSide(
            color: appTheme.deepPurple100,
            width: 2.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.gray30004,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray20002 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray20002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray30001 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.gray30001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray300011 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray30001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray3001 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray3002 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray70019 => BoxDecoration(
        color: appTheme.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray70019,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              20,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigo3003f => BoxDecoration(
        color: appTheme.redA200,
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo3003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigoA => BoxDecoration(
        color: appTheme.indigoA20003,
        border: Border.all(
          color: appTheme.indigoA20003,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineIndigoA20003 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.indigoA20003,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineIndigoA20026 => BoxDecoration(
        color: appTheme.indigoA20003,
        boxShadow: [
          BoxShadow(
            color: appTheme.indigoA20026,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigoF => BoxDecoration(
        color: appTheme.indigoA20003,
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo3003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder101 => BorderRadius.circular(
        101.h,
      );
  static BorderRadius get circleBorder28 => BorderRadius.circular(
        28.h,
      );
  static BorderRadius get circleBorder48 => BorderRadius.circular(
        48.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL33 => BorderRadius.vertical(
        bottom: Radius.circular(33.h),
      );
  static BorderRadius get customBorderTL10 => BorderRadius.horizontal(
        left: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL24 => BorderRadius.only(
        topLeft: Radius.circular(24.h),
        topRight: Radius.circular(24.h),
        bottomLeft: Radius.circular(24.h),
      );
  static BorderRadius get customBorderTL241 => BorderRadius.only(
        topLeft: Radius.circular(24.h),
        topRight: Radius.circular(24.h),
        bottomRight: Radius.circular(24.h),
      );
  static BorderRadius get customBorderTL38 => BorderRadius.vertical(
        top: Radius.circular(38.h),
      );
  static BorderRadius get customBorderTL48 => BorderRadius.vertical(
        top: Radius.circular(48.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder19 => BorderRadius.circular(
        19.h,
      );
  static BorderRadius get roundedBorder31 => BorderRadius.circular(
        31.h,
      );
  static BorderRadius get roundedBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get roundedBorder45 => BorderRadius.circular(
        45.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    