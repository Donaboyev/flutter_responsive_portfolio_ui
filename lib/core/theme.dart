import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class AppStyles {
  static TextStyle styTextButtonAppBar = GoogleFonts.heebo(
    textStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
  );

  static TextStyle styWhoAmIDesktop = GoogleFonts.heebo(
    textStyle: const TextStyle(
      fontSize: 44,
      fontWeight: FontWeight.w700,
      color: primaryColor,
    ),
  );

  static TextStyle styWhoAmIMobile = GoogleFonts.heebo(
    textStyle: const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      color: primaryColor,
    ),
  );

  static TextStyle styAboutMe = GoogleFonts.heebo(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: primaryColor,
    ),
  );

  static TextStyle styRecentPosts = GoogleFonts.heebo(
    textStyle: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w400,
      color: clrDarkBlack,
    ),
  );

  static TextStyle styRecentItemTitleMobile = GoogleFonts.heebo(
    textStyle: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: clrDarkBlack,
    ),
  );

  static TextStyle styBlueTextButton = GoogleFonts.heebo(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: clrBlueText,
    ),
  );

  static TextStyle styRecentItemTitle = GoogleFonts.heebo(
    textStyle: const TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w700,
      color: clrDarkBlack,
    ),
  );

  static TextStyle styRecentItemDate = GoogleFonts.heebo(
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: clrDarkBlack,
    ),
  );

  static TextStyle styFeaturedTitle = GoogleFonts.heebo(
    textStyle: const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w700,
      color: clrDarkBlack,
    ),
  );

  static TextStyle styFeaturedYear = GoogleFonts.heebo(
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w900,
      color: clrWhite,
    ),
  );

  static TextStyle styFeaturedYearMobile = GoogleFonts.heebo(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w900,
      color: clrWhite,
    ),
  );

  static TextStyle styFeaturedTopic = GoogleFonts.heebo(
    textStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: clrFeaturedTopic,
    ),
  );

  static TextStyle styFeaturedTopicMobile = GoogleFonts.heebo(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: clrFeaturedTopic,
    ),
  );

  static TextStyle styFeaturedTitleMobile = GoogleFonts.heebo(
    textStyle: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: clrDarkBlack,
    ),
  );

  static TextStyle styCopyright = GoogleFonts.heebo(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: clrDarkBlack,
    ),
  );
}
