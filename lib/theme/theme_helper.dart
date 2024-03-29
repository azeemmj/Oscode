import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.primary,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.gray300,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.indigoA20003,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray900,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray90004.withOpacity(0.53),
          fontSize: 14.fSize,
          fontFamily: 'AirbnbCereal_W_Bk',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray40001,
          fontSize: 12.fSize,
          fontFamily: 'AirbnbCereal_W_Bk',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: appTheme.gray90003,
          fontSize: 35.fSize,
          fontFamily: 'AirbnbCereal_W_Bk',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: appTheme.gray90003,
          fontSize: 24.fSize,
          fontFamily: 'AirbnbCereal_W_Md',
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 12.fSize,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 10.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'AirbnbCereal_W_Md',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 16.fSize,
          fontFamily: 'AirbnbCereal_W_Md',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray700,
          fontSize: 14.fSize,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFFFFFFF),
    primaryContainer: Color(0XFF703C9F),
    secondaryContainer: Color(0XFF111029),

    // Error colors
    errorContainer: Color(0XFFFF8D5C),
    onError: Color(0XFFF9F9F9),
    onErrorContainer: Color(0XFF141736),

    // On colors(text colors)
    onPrimary: Color(0XFF5215B6),
    onPrimaryContainer: Color(0XFF060518),
    onSecondaryContainer: Color(0XFF7974E7),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber300 => Color(0XFFF1CA4D);
  Color get amber30001 => Color(0XFFFBD758);
  Color get amber400 => Color(0XFFFBCC22);
  Color get amber600 => Color(0XFFFBBB00);

  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue400 => Color(0XFF549BF6);
  Color get blue40001 => Color(0XFF4891E0);
  Color get blue50 => Color(0XFFE3F0FF);
  Color get blue5001 => Color(0XFFEBF5FC);
  Color get blueA400 => Color(0XFF2675FF);

  // BlueGray
  Color get blueGray10021 => Color(0X21D9D9D9);
  Color get blueGray200 => Color(0XFFADAFBB);
  Color get blueGray20001 => Color(0XFFB0B1BB);
  Color get blueGray20002 => Color(0XFFB0B1BC);
  Color get blueGray20003 => Color(0XFFB8B6C7);
  Color get blueGray400 => Color(0XFF848688);
  Color get blueGray40001 => Color(0XFF7D8592);
  Color get blueGray500 => Color(0XFF716E90);
  Color get blueGray50001 => Color(0XFF6F6D8F);
  Color get blueGray60011 => Color(0X1152588F);
  Color get blueGray700 => Color(0XFF484D70);
  Color get blueGray800 => Color(0XFF334A66);
  Color get blueGray80001 => Color(0XFF3C3E56);
  Color get blueGray80002 => Color(0XFF2F3A53);
  Color get blueGray900 => Color(0XFF172B4D);
  Color get blueGray90001 => Color(0XFF2A2749);

  // BlueGrayf
  Color get blueGray1003f => Color(0X3FD2D4E2);
  Color get blueGray6000f => Color(0X0F4F5588);
  Color get blueGray6000f01 => Color(0X0F575C8A);

  // BlueGraye
  Color get blueGray9001e => Color(0X1E2E2E4E);

  // Cyan
  Color get cyan30014 => Color(0X144AD2E4);
  Color get cyanA400 => Color(0XFF00F8FF);

  // DeepOrange
  Color get deepOrange300 => Color(0XFFF59762);

  // DeepPurple
  Color get deepPurple100 => Color(0XFFE0D1F9);
  Color get deepPurple10001 => Color(0XFFCDC1D9);
  Color get deepPurple200 => Color(0XFFC2A3F4);
  Color get deepPurple400 => Color(0XFF805EE2);
  Color get deepPurple50 => Color(0XFFECEBFC);
  Color get deepPurpleA200 => Color(0XFF7D67EE);

  // Gray
  Color get gray100 => Color(0XFFF4F4FE);
  Color get gray200 => Color(0XFFEEEEEE);
  Color get gray20001 => Color(0XFFEEEEEF);
  Color get gray20002 => Color(0XFFEEEBEB);
  Color get gray300 => Color(0XFFD8E0F0);
  Color get gray30001 => Color(0XFFE4DEDE);
  Color get gray30002 => Color(0XFFE6E6E6);
  Color get gray30003 => Color(0XFFE4E6E8);
  Color get gray30004 => Color(0XFFE5E5E5);
  Color get gray50 => Color(0XFFF6F7FB);
  Color get gray500 => Color(0XFF979797);
  Color get gray50001 => Color(0XFF9D9898);
  Color get gray50002 => Color(0XFF9A9A9A);
  Color get gray50003 => Color(0XFF9799A5);
  Color get gray5001 => Color(0XFFF9F6FD);
  Color get gray600 => Color(0XFF747688);
  Color get gray60001 => Color(0XFF6F6C6C);
  Color get gray60002 => Color(0XFF757575);
  Color get gray60003 => Color(0XFF7F7979);
  Color get gray60004 => Color(0XFF7C7C7C);
  Color get gray700 => Color(0XFF646366);
  Color get gray70019 => Color(0X19595959);
  Color get gray800 => Color(0XFF484545);
  Color get gray80001 => Color(0XFF3F434A);
  Color get gray900 => Color(0XFF0A1629);
  Color get gray90001 => Color(0XFF120E1A);
  Color get gray90002 => Color(0XFF0D0C26);
  Color get gray90003 => Color(0XFF110C26);
  Color get gray90004 => Color(0XFF181C25);

  // Grayf
  Color get gray4007f => Color(0X7FB2B2B2);

  // Green
  Color get green700 => Color(0XFF32A22A);

  // Indigo
  Color get indigo200 => Color(0XFFA19EEF);
  Color get indigo20021 => Color(0X219CB1D5);
  Color get indigo800 => Color(0XFF293688);
  Color get indigo900 => Color(0XFF181A93);
  Color get indigoA200 => Color(0XFF5A61FF);
  Color get indigoA20001 => Color(0XFF6B7AED);
  Color get indigoA20002 => Color(0XFF5C56F3);
  Color get indigoA20003 => Color(0XFF5668FF);
  Color get indigoA20026 => Color(0X265568FF);
  Color get indigoA400 => Color(0XFF3D55F0);
  Color get indigoA40001 => Color(0XFF4A43EB);
  Color get indigoA700 => Color(0XFF3F38DD);
  Color get indigoA70001 => Color(0XFF0000FF);

  // Indigof
  Color get indigo3003f => Color(0X3F6F7DC8);

  // LightBlue
  Color get lightBlue100 => Color(0XFFA3DCF4);
  Color get lightBlue500 => Color(0XFF00ADE7);
  Color get lightBlueA200 => Color(0XFF38D0F2);
  Color get lightBlueA20001 => Color(0XFF46CCFA);

  // Orange
  Color get orange200 => Color(0XFFFFCD6B);
  Color get orange300 => Color(0XFFE9C265);

  // Pink
  Color get pink100 => Color(0XFFF6A7BE);
  Color get pink300 => Color(0XFFFF6584);

  // Purple
  Color get purple100 => Color(0XFFF6BAED);
  Color get purple900 => Color(0XFF42006E);
  Color get purpleA200 => Color(0XFFE948CF);

  // Red
  Color get red300 => Color(0XFFFF656F);
  Color get red400 => Color(0XFFEE544A);
  Color get red40001 => Color(0XFFEB5757);
  Color get red40002 => Color(0XFFEF635A);
  Color get red50 => Color(0XFFFDF0E9);
  Color get red500 => Color(0XFFF03D3D);
  Color get red600 => Color(0XFFE43E2B);
  Color get redA200 => Color(0XFFF65160);
  Color get redA70033 => Color(0X33FF0000);

  // Teal
  Color get teal200 => Color(0XFF7BD6AA);
  Color get teal300 => Color(0XFF45B39C);
  Color get teal400 => Color(0XFF2AA276);
  Color get teal600 => Color(0XFF25956C);
  Color get teal60001 => Color(0XFF24946C);
  Color get tealA400 => Color(0XFF29D697);
  Color get tealA700 => Color(0XFF00B6AA);

  // White
  Color get whiteA700 => Color(0XFFFFFFFE);
  Color get whiteA70001 => Color(0XFFFEFEFF);

  // Yellow
  Color get yellow900 => Color(0XFFEF691D);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
