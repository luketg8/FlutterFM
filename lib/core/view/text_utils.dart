import 'package:flutter/rendering.dart';

class TextProperties {
  final bool willOverflow;
  final int numberOfLines;

  TextProperties(this.willOverflow, this.numberOfLines);
}

class TextUtils {
  static TextProperties getTextProperties(
    String? text, {
    required TextStyle style,
    required int maxLines,
    double maxWidth = double.infinity,
  }) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: style,
      ),
      maxLines: maxLines,
      textDirection: TextDirection.ltr,
    )..layout(
        maxWidth: maxWidth,
      );

    return TextProperties(
      textPainter.didExceedMaxLines,
      textPainter.height.round(),
    );
  }
}
