import 'package:flutter/material.dart';
import 'package:oscode2/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.indigoA400,
                  borderRadius: BorderRadius.circular(15.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(31.h),
        border: Border.all(
          color: appTheme.gray30004,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillIndigoATL31 => BoxDecoration(
        color: appTheme.indigoA20003,
        borderRadius: BorderRadius.circular(31.h),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.7),
        borderRadius: BorderRadius.circular(7.h),
      );
  static BoxDecoration get fillPrimaryTL10 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillIndigoATL12 => BoxDecoration(
        color: appTheme.indigoA20003,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get outlineIndigoA => BoxDecoration(
        borderRadius: BorderRadius.circular(16.h),
        border: Border.all(
          color: appTheme.indigoA20003,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillIndigoATL16 => BoxDecoration(
        color: appTheme.indigoA20003,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal400,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple400,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber400,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue50,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA200,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red500,
        borderRadius: BorderRadius.circular(15.h),
      );
  static BoxDecoration get fillDeepPurpleTL20 => BoxDecoration(
        color: appTheme.deepPurple100,
        borderRadius: BorderRadius.circular(20.h),
      );
}
