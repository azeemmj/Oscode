import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyLargeAirbnbCerealWBk =>
      theme.textTheme.bodyLarge!.airbnbCerealWBk;
  static get bodyLargeAirbnbCerealWBkBluegray800 =>
      theme.textTheme.bodyLarge!.airbnbCerealWBk.copyWith(
        color: appTheme.blueGray800.withOpacity(0.6),
      );
  static get bodyLargeAirbnbCerealWBkBluegray80001 =>
      theme.textTheme.bodyLarge!.airbnbCerealWBk.copyWith(
        color: appTheme.blueGray80001,
      );
  static get bodyLargeAirbnbCerealWBkGray600 =>
      theme.textTheme.bodyLarge!.airbnbCerealWBk.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeAirbnbCerealWBkGray600_1 =>
      theme.textTheme.bodyLarge!.airbnbCerealWBk.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeAirbnbCerealWBkGray700 =>
      theme.textTheme.bodyLarge!.airbnbCerealWBk.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeAirbnbCerealWBkGray700_1 =>
      theme.textTheme.bodyLarge!.airbnbCerealWBk.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeAirbnbCerealWBkGray90001 =>
      theme.textTheme.bodyLarge!.airbnbCerealWBk.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyLargeAirbnbCerealWBkGray90003 =>
      theme.textTheme.bodyLarge!.airbnbCerealWBk.copyWith(
        color: appTheme.gray90003,
      );
  static get bodyLargeAirbnbCerealWBkGray90004 =>
      theme.textTheme.bodyLarge!.airbnbCerealWBk.copyWith(
        color: appTheme.gray90004.withOpacity(0.53),
      );
  static get bodyLargeAirbnbCerealWBkIndigoA20003 =>
      theme.textTheme.bodyLarge!.airbnbCerealWBk.copyWith(
        color: appTheme.indigoA20003,
      );
  static get bodyLargeAirbnbCerealWBkIndigoA700 =>
      theme.textTheme.bodyLarge!.airbnbCerealWBk.copyWith(
        color: appTheme.indigoA700,
        fontSize: 18.fSize,
      );
  static get bodyLargeAirbnbCerealWBkOnErrorContainer =>
      theme.textTheme.bodyLarge!.airbnbCerealWBk.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyLargeAirbnbCerealWBkPrimary =>
      theme.textTheme.bodyLarge!.airbnbCerealWBk.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeAirbnbCerealWBkRedA200 =>
      theme.textTheme.bodyLarge!.airbnbCerealWBk.copyWith(
        color: appTheme.redA200,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlack90015 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get bodyMediumBluegray200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 15.fSize,
      );
  static get bodyMediumBluegray40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodyMediumBluegray4000113 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 13.fSize,
      );
  static get bodyMediumBluegray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray700,
        fontSize: 13.fSize,
      );
  static get bodyMediumBluegray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get bodyMediumBluegray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 13.fSize,
      );
  static get bodyMediumDeeppurple10001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.deepPurple10001,
      );
  static get bodyMediumGray50002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50002,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray50003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50003,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumGray60001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyMediumGray60003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60003,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray60013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumGray90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90002,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray90003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90003,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray9000315 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90003,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray90003_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90003,
      );
  static get bodyMediumGray90013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 13.fSize,
      );
  static get bodyMediumIndigoA20003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigoA20003,
      );
  static get bodyMediumIndigoA2000313 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigoA20003,
        fontSize: 13.fSize,
      );
  static get bodyMediumIndigoA2000315 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigoA20003,
        fontSize: 15.fSize,
      );
  static get bodyMediumIndigoA2000315_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigoA20003,
        fontSize: 15.fSize,
      );
  static get bodyMediumIndigoA20003_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigoA20003,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumOxygenBlack900 =>
      theme.textTheme.bodyMedium!.oxygen.copyWith(
        color: appTheme.black900.withOpacity(0.88),
        fontSize: 13.fSize,
      );
  static get bodyMediumOxygenGray900 =>
      theme.textTheme.bodyMedium!.oxygen.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumPoppinsBlack900 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.64),
        fontSize: 15.fSize,
      );
  static get bodyMediumPrimary13 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
      );
  static get bodyMediumPrimary15 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get bodyMediumPrimary_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmallBlue400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blue400,
      );
  static get bodySmallBlue400_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blue400,
      );
  static get bodySmallBluegray50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray50001,
      );
  static get bodySmallBluegray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodySmallBluegray80001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get bodySmallDeeppurple50 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.deepPurple50,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900,
      );
  static get bodySmallGray90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodySmallGray900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900,
      );
  static get bodySmallIndigoA20003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigoA20003,
      );
  static get bodySmallIndigoA20003_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigoA20003,
      );
  static get bodySmallNunitoSansGray900 =>
      theme.textTheme.bodySmall!.nunitoSans.copyWith(
        color: appTheme.gray900,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallPrimary_2 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
      );
  // Headline text style
  static get headlineSmallAirbnbCerealWBkBlack900 =>
      theme.textTheme.headlineSmall!.airbnbCerealWBk.copyWith(
        color: appTheme.black900,
        fontSize: 25.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallAirbnbCerealWLtBlack900 =>
      theme.textTheme.headlineSmall!.airbnbCerealWLt.copyWith(
        color: appTheme.black900.withOpacity(0.46),
        fontWeight: FontWeight.w300,
      );
  static get headlineSmallLatoBlack900 =>
      theme.textTheme.headlineSmall!.lato.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallPoppinsBlack900 =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallSFProDisplayBlack900 =>
      theme.textTheme.headlineSmall!.sFProDisplay.copyWith(
        color: appTheme.black900,
        fontSize: 25.fSize,
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeAirbnbCerealWMd =>
      theme.textTheme.labelLarge!.airbnbCerealWMd.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAirbnbCerealWMdAmber600 =>
      theme.textTheme.labelLarge!.airbnbCerealWMd.copyWith(
        color: appTheme.amber600,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAirbnbCerealWMdBlack900 =>
      theme.textTheme.labelLarge!.airbnbCerealWMd.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAirbnbCerealWMdBluegray40001 =>
      theme.textTheme.labelLarge!.airbnbCerealWMd.copyWith(
        color: appTheme.blueGray40001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAirbnbCerealWMdDeeppurple200 =>
      theme.textTheme.labelLarge!.airbnbCerealWMd.copyWith(
        color: appTheme.deepPurple200,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAirbnbCerealWMdGray100 =>
      theme.textTheme.labelLarge!.airbnbCerealWMd.copyWith(
        color: appTheme.gray100,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAirbnbCerealWMdGray90001 =>
      theme.textTheme.labelLarge!.airbnbCerealWMd.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAirbnbCerealWMdIndigoA20003 =>
      theme.textTheme.labelLarge!.airbnbCerealWMd.copyWith(
        color: appTheme.indigoA20003,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAirbnbCerealWMdIndigoA700 =>
      theme.textTheme.labelLarge!.airbnbCerealWMd.copyWith(
        color: appTheme.indigoA700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAirbnbCerealWMdIndigoA700Medium =>
      theme.textTheme.labelLarge!.airbnbCerealWMd.copyWith(
        color: appTheme.indigoA700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAirbnbCerealWMdPrimary =>
      theme.textTheme.labelLarge!.airbnbCerealWMd.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAirbnbCerealWMdPrimaryMedium =>
      theme.textTheme.labelLarge!.airbnbCerealWMd.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAirbnbCerealWMdPurpleA200 =>
      theme.textTheme.labelLarge!.airbnbCerealWMd.copyWith(
        color: appTheme.purpleA200,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeLatoDeeppurple200 =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.deepPurple200,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeLatoGray90001 =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeLatoIndigoA20003 =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.indigoA20003,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeLatoLightblue100 =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.lightBlue100,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeLatoPurpleA200 =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.purpleA200,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumAirbnbCerealWMdIndigoA20003 =>
      theme.textTheme.labelMedium!.airbnbCerealWMd.copyWith(
        color: appTheme.indigoA20003,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumAirbnbCerealWMdPrimary =>
      theme.textTheme.labelMedium!.airbnbCerealWMd.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumAirbnbCerealWMdRed40002 =>
      theme.textTheme.labelMedium!.airbnbCerealWMd.copyWith(
        color: appTheme.red40002,
        fontWeight: FontWeight.w500,
      );
  static get labelMedium_1 => theme.textTheme.labelMedium!;
  // Title text style
  static get titleLargeAirbnbCerealWBkPrimary =>
      theme.textTheme.titleLarge!.airbnbCerealWBk.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.46),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBluegray40001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get titleLargeGray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get titleLargeLatoGray90001 =>
      theme.textTheme.titleLarge!.lato.copyWith(
        color: appTheme.gray90001,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 22.fSize,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack90018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumBlack90019 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 19.fSize,
      );
  static get titleMediumBluegray40001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray40001.withOpacity(0.65),
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray80018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
      );
  static get titleMediumGray50001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get titleMediumGray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleMediumGray90003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90003,
        fontSize: 18.fSize,
      );
  static get titleMediumGray9000318 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90003.withOpacity(0.65),
        fontSize: 18.fSize,
      );
  static get titleMediumGray9000318_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90003,
        fontSize: 18.fSize,
      );
  static get titleMediumGray90003_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90003,
      );
  static get titleMediumGray90003_2 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90003,
      );
  static get titleMediumGray90003_3 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90003.withOpacity(0.65),
      );
  static get titleMediumGray90003_4 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90003,
      );
  static get titleMediumGray90004 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90004,
      );
  static get titleMediumGray90018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
      );
  static get titleMediumGray900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get titleMediumIndigoA20003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigoA20003.withOpacity(0.65),
        fontSize: 18.fSize,
      );
  static get titleMediumIndigoA2000318 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigoA20003,
        fontSize: 18.fSize,
      );
  static get titleMediumIndigoA2000318_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigoA20003,
        fontSize: 18.fSize,
      );
  static get titleMediumIndigoA20003_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigoA20003,
      );
  static get titleMediumLatoBlack900 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumLatoBlack900_1 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumLatoGray5001 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.gray5001,
        fontSize: 18.fSize,
      );
  static get titleMediumLatoGray700 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.gray700,
        fontSize: 18.fSize,
      );
  static get titleMediumLatoGray700_1 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.gray700,
      );
  static get titleMediumLatoGray700_2 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.gray700,
      );
  static get titleMediumLatoGray90001 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.gray90001,
        fontSize: 18.fSize,
      );
  static get titleMediumLatoGray9000118 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.gray90001,
        fontSize: 18.fSize,
      );
  static get titleMediumLatoGray90001_1 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.gray90001,
      );
  static get titleMediumLatoGray90001_2 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.gray90001,
      );
  static get titleMediumLatoIndigoA20003 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.indigoA20003.withOpacity(0.65),
        fontSize: 18.fSize,
      );
  static get titleMediumLatoIndigoA2000318 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.indigoA20003,
        fontSize: 18.fSize,
      );
  static get titleMediumLatoIndigoA20003_1 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.indigoA20003,
      );
  static get titleMediumLatoOnPrimary =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 18.fSize,
      );
  static get titleMediumLatoPink300 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.pink300,
        fontSize: 18.fSize,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.53),
        fontSize: 18.fSize,
      );
  static get titleMediumRed40002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red40002,
        fontSize: 18.fSize,
      );
  static get titleMediumSFProDisplay =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallAirbnbCerealWMdBlack900 =>
      theme.textTheme.titleSmall!.airbnbCerealWMd.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get titleSmallAirbnbCerealWMdBluegray40001 =>
      theme.textTheme.titleSmall!.airbnbCerealWMd.copyWith(
        color: appTheme.blueGray40001,
      );
  static get titleSmallAirbnbCerealWMdBluegray40001_1 =>
      theme.textTheme.titleSmall!.airbnbCerealWMd.copyWith(
        color: appTheme.blueGray40001,
      );
  static get titleSmallAirbnbCerealWMdGray900 =>
      theme.textTheme.titleSmall!.airbnbCerealWMd.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallAirbnbCerealWMdGray90003 =>
      theme.textTheme.titleSmall!.airbnbCerealWMd.copyWith(
        color: appTheme.gray90003,
        fontSize: 15.fSize,
      );
  static get titleSmallAirbnbCerealWMdGray900_1 =>
      theme.textTheme.titleSmall!.airbnbCerealWMd.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallAirbnbCerealWMdIndigoA20003 =>
      theme.textTheme.titleSmall!.airbnbCerealWMd.copyWith(
        color: appTheme.indigoA20003,
      );
  static get titleSmallAirbnbCerealWMdIndigoA700 =>
      theme.textTheme.titleSmall!.airbnbCerealWMd.copyWith(
        color: appTheme.indigoA700,
        fontSize: 15.fSize,
      );
  static get titleSmallAirbnbCerealWMdOnPrimaryContainer =>
      theme.textTheme.titleSmall!.airbnbCerealWMd.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallAirbnbCerealWMdOnPrimaryContainer_1 =>
      theme.textTheme.titleSmall!.airbnbCerealWMd.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallAirbnbCerealWMdRed40002 =>
      theme.textTheme.titleSmall!.airbnbCerealWMd.copyWith(
        color: appTheme.red40002,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallDeeppurple10001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepPurple10001,
      );
  static get titleSmallGray5001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray5001,
      );
  static get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleSmallGray90001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleSmallIndigoA20003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigoA20003,
      );
  static get titleSmallPoppinsBlack900 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsGray60004 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray60004,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get airbnbCerealWBk {
    return copyWith(
      fontFamily: 'AirbnbCereal_W_Bk',
    );
  }

  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get airbnbCerealWLt {
    return copyWith(
      fontFamily: 'AirbnbCereal_W_Lt',
    );
  }

  TextStyle get oxygen {
    return copyWith(
      fontFamily: 'Oxygen',
    );
  }

  TextStyle get airbnbCerealWMd {
    return copyWith(
      fontFamily: 'AirbnbCereal_W_Md',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get nunitoSans {
    return copyWith(
      fontFamily: 'Nunito Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
