import 'package:athlete_app/core/responsive/size_config.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class AppTextStyles {
  static TextStyle headlineLarge = TextStyle(
    fontSize: SizeConfig.textMultiplier * 3.5, // Responsive size
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  static TextStyle headlineMedium = TextStyle(
    fontSize: SizeConfig.textMultiplier * 3.0,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor,
  );

  static TextStyle headlineSmall = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.5,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
  );

  static TextStyle bodyLarge = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.2,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
  );

  static TextStyle bodyMedium = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.0,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
  );

  static TextStyle bodySmall = TextStyle(
    fontSize: SizeConfig.textMultiplier * 1.8,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
  );

  static TextStyle labelSmall = TextStyle(
    fontSize: SizeConfig.textMultiplier * 1.5,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary.withOpacity(0.6),
  );
}
