import 'package:flutter/material.dart';

// Custom Colors class to maintain consistent colors throughout the app
class AppColors {
  // Primary Colors
  static const Color primary = Color(0xFF7B61FF);          // Purple
  static const Color secondary = Color(0xFFECBE38);        // Golden Yellow

  // Neutral Colors
  static const Color black = Color(0xFF2D2D2D);           // Deep Black
  static const Color white = Colors.white;
  static const Color grey = Color(0xFF757575);            // Medium Grey
  static const Color lightGrey = Color(0xFFAAAAAA);       // Light Grey

  // Background Colors
  static const Color background = Color(0xFFF8F8FF);      // Light Purple-ish White
  static const Color cardBackground = Colors.white;
  static const Color secondaryBackground = Color(0xFFF5F5F5);

  // Text Colors
  static const Color textPrimary = Color(0xFF2D2D2D);     // Dark Grey
  static const Color textSecondary = Color(0xFF757575);   // Medium Grey
  static const Color textLight = Color(0xFFAAAAAA);       // Light Grey
  static const Color textWhite = Colors.white;

  // Status Colors
  static const Color success = Color(0xFF4CAF50);         // Green
  static const Color error = Color(0xFFE53935);           // Red
  static const Color warning = Color(0xFFFFA000);         // Amber
  static const Color info = Color(0xFF2196F3);            // Blue

  // Border Colors
  static const Color border = Color(0xFFE0E0E0);          // Light Grey
  static const Color divider = Color(0xFFEEEEEE);         // Very Light Grey

  // Shadow Colors
  static const Color shadow = Color(0x1A000000);          // Black with 10% opacity
  static const Color lightShadow = Color(0x0A000000);     // Black with 4% opacity

  // Component Specific Colors
  static const Color appBarBackground = Colors.white;
  static const Color bottomNavBackground = Colors.white;
  static const Color cardShadow = Color(0x1A000000);

  // Teacher Card Specific Colors
  static const Color teacherCardShadow = Color(0x0A000000);
  static const Color teacherCardBorder = Color(0xFFE8E8E8);

  // FAQ Colors
  static const Color faqBackground = Color(0xFFF8F8FF);   // Light Purple-ish White
  static const Color faqExpanded = Color(0xFFEDEAFF);     // Lighter Purple
  static const Color faqIcon = Color(0xFF7B61FF);         // Purple

  // Price Colors
  static const Color priceText = Color(0xFF2D2D2D);       // Deep Black
  static const Color priceDiscount = Color(0xFFFF5252);   // Red
  static const Color originalPrice = Color(0xFFBDBDBD);   // Grey

  // Button Colors
  static const Color buttonPrimary = Color(0xFF2D2D2D);   // Deep Black
  static const Color buttonSecondary = Color(0xFF7B61FF); // Purple
  static const Color buttonDisabled = Color(0xFFE0E0E0);  // Light Grey

  // Gradient Colors
  static const List<Color> primaryGradient = [
    Color(0xFF7B61FF),
    Color(0xFF9C8FFF),
  ];

  static const List<Color> secondaryGradient = [
    Color(0xFFECBE38),
    Color(0xFFFFF176),
  ];
}
