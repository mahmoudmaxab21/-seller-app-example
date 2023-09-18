import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeOrange700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.orange700.withOpacity(1),
        fontWeight: FontWeight.w100,
      );
  static get bodyLargeOrange700_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.orange700.withOpacity(1),
      );
  static get bodyLargeThin => theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w100,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: getFontSize(
          15,
        ),
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumInterBlue700 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blue700,
      );
  static get bodyMediumInterWhiteA700 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumOrange700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.orange700.withOpacity(1),
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallBackground => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.background,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallOrange700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.orange700.withOpacity(1),
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  // Display text style
  static get displayMediumPrimary => theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get displaySmallRobotoOnPrimary =>
      theme.textTheme.displaySmall!.roboto.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get displaySmallRobotoOrange700 =>
      theme.textTheme.displaySmall!.roboto.copyWith(
        color: appTheme.orange700.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get displaySmallRobotoPrimary =>
      theme.textTheme.displaySmall!.roboto.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w300,
      );
  static get displaySmallRobotoPrimaryBold =>
      theme.textTheme.displaySmall!.roboto.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get displaySmallRobotoPrimaryLight =>
      theme.textTheme.displaySmall!.roboto.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w300,
      );
  // Title text style
  static get titleLargeBackground => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.background,
      );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w300,
      );
  static get titleLargeIndigoA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigoA700,
      );
  static get titleLargeIndigoA70002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigoA70002,
      );
  static get titleLargeOnInverseSurface => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onInverseSurface,
      );
  static get titleLargeOrange700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.orange700.withOpacity(1),
      );
  static get titleLargeOrange700Regular => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.orange700.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimaryContainer_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleLargePrimaryRegular => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimary_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBackground => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.background,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
