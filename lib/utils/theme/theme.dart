import 'package:flutter/material.dart';
import 'package:QuickBuy/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:QuickBuy/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:QuickBuy/utils/theme/custom_themes/chip_theme.dart';
import 'package:QuickBuy/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:QuickBuy/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:QuickBuy/utils/theme/custom_themes/text_field_theme.dart';
import 'custom_themes/text_theme.dart';
import 'custom_themes/appbar_theme.dart';

class SAppTheme{
  SAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: STextTheme.lightTextTheme,
    chipTheme: SChipTheme.lightChipTheme,
    appBarTheme:SAppBarTheme.lightAppBarTheme,
    checkboxTheme: SCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: SBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: SElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: SOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: STextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: STextTheme.darkTextTheme,
    chipTheme: SChipTheme.darkChipTheme,
    appBarTheme:SAppBarTheme.darkAppBarTheme,
    checkboxTheme: SCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: SBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: SElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: SOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: STextFormFieldTheme.darkInputDecorationTheme,
  );
}