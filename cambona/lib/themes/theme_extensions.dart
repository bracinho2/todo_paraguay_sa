import 'package:flutter/material.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.brandColor,
    required this.danger,
  });

  final Color? brandColor;
  final Color? danger;

  @override
  MyColors copyWith({Color? brandColor, Color? danger}) {
    return MyColors(
      brandColor: brandColor ?? this.brandColor,
      danger: danger ?? this.danger,
    );
  }

  // Optional
  @override
  String toString() => 'MyColors(brandColor: $brandColor, danger: $danger)';

  @override
  ThemeExtension<MyColors> lerp(ThemeExtension<MyColors>? other, double t) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(
      brandColor: Color.lerp(brandColor, other.brandColor, t),
      danger: Color.lerp(danger, other.danger, t),
    );
  }
}

ThemeData get myThemeLight => ThemeData.light().copyWith(
      extensions: <ThemeExtension<dynamic>>[
        const MyColors(
          brandColor: Color(0xFF1E88E5),
          danger: Color(0xFFE53935),
        ),
      ],
    );
