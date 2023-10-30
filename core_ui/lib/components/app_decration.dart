import 'package:core_ui/core_ui.dart';

class AppDecoration {
  static BoxDecoration get dark => const BoxDecoration(
        color: ApplicationColors.cardColor,
      );

  // Fill decorations
  static BoxDecoration get fillGray => const BoxDecoration(
        color: ApplicationColors.black,
      );

  // Outline decorations
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        border: Border.all(
          color: ApplicationColors.borderColor,
          width: 1,
        ),
      );

  // White decorations
  static BoxDecoration get white => const BoxDecoration(
        color: ApplicationColors.white,
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8,
      );
}

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;
