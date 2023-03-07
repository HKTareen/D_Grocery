import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';
import '../constants/app_defaults.dart';

class AppTheme {
  static TextStyle defaultTextStyle = GoogleFonts.montserrat();

  /// Light Theme
  static ThemeData get lightTheme => ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        textTheme: GoogleFonts.ralewayTextTheme(),
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
        primaryColor: AppColors.primary,
        cardColor: AppColors.cardColor,
        canvasColor: AppColors.cardColor,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: AppDefaults.borderRadius,
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: AppDefaults.borderRadius,
            borderSide: const BorderSide(color: AppColors.primary),
          ),
          fillColor: AppColors.cardColor,
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.scaffoldBackground,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: AppColors.scaffoldBackground,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: AppColors.scaffoldBackground,
          ),
          iconTheme: IconThemeData(color: AppColors.primary),
          titleTextStyle: TextStyle(
            color: Colors.black,
          ),
          centerTitle: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(AppDefaults.padding),
            shape: RoundedRectangleBorder(
              borderRadius: AppDefaults.borderRadius,
            ),
            textStyle: defaultTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.primary,
            side: const BorderSide(color: AppColors.primary),
            padding: const EdgeInsets.symmetric(
              horizontal: AppDefaults.padding * 2,
              vertical: AppDefaults.padding,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: AppDefaults.borderRadius,
            ),
            textStyle: defaultTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: defaultTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        tabBarTheme: TabBarTheme(
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(
              color: AppColors.primary,
              width: 2,
            ),
          ),
          labelPadding: const EdgeInsets.symmetric(
            horizontal: AppDefaults.padding,
            vertical: AppDefaults.padding / 1.15,
          ),
          labelColor: AppColors.primary,
          unselectedLabelColor: AppColors.cardColorDark.withOpacity(0.5),
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: defaultTextStyle.copyWith(
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(),
        ),
        checkboxTheme: const CheckboxThemeData(
          side: BorderSide(
            color: AppColors.scaffoldBackgrounDark,
          ),
        ),
      );

  /// Dark Theme
  static ThemeData get darkTheme => ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        textTheme: GoogleFonts.ralewayTextTheme(),
        scaffoldBackgroundColor: AppColors.scaffoldBackgrounDark,
        primaryColor: AppColors.primary,
        cardColor: AppColors.cardColorDark,
        canvasColor: AppColors.cardColorDark,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: AppDefaults.borderRadius,
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: AppDefaults.borderRadius,
            borderSide: const BorderSide(color: AppColors.primary),
          ),
          fillColor: AppColors.cardColorDark,
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.scaffoldBackgrounDark,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: AppColors.scaffoldBackgrounDark,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: AppColors.scaffoldBackgrounDark,
          ),
          iconTheme: IconThemeData(color: AppColors.primary),
          titleTextStyle: TextStyle(
            color: Colors.black,
          ),
          centerTitle: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(AppDefaults.padding),
            shape: RoundedRectangleBorder(
              borderRadius: AppDefaults.borderRadius,
            ),
            textStyle: defaultTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.primary,
            side: const BorderSide(color: AppColors.primary),
            padding: const EdgeInsets.symmetric(
              horizontal: AppDefaults.padding * 2,
              vertical: AppDefaults.padding,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: AppDefaults.borderRadius,
            ),
            textStyle: defaultTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: defaultTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        tabBarTheme: TabBarTheme(
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(
              color: AppColors.primary,
              width: 2,
            ),
          ),
          labelPadding: const EdgeInsets.symmetric(
            horizontal: AppDefaults.padding,
            vertical: AppDefaults.padding / 1.15,
          ),
          labelColor: AppColors.primary,
          unselectedLabelColor: AppColors.cardColorDark.withOpacity(0.5),
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: defaultTextStyle.copyWith(
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(),
        ),
        checkboxTheme: const CheckboxThemeData(
          side: BorderSide(
            color: AppColors.scaffoldBackgrounDark,
          ),
        ),
      );
}
