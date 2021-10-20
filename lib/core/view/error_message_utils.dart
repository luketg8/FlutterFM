import 'package:flutter/material.dart';
import 'package:flutter_fm/core/domain/network_failure.dart';
import 'package:flutter_fm/core/view/context_extensions.dart';

class ErrorMessageUtils {
  static String resolveErrorMessage(
      BuildContext context, NetworkFailure error) {
    return error.map(
      noConnection: (_) => context.strings.errorsNoConnection,
      withMessage: (e) => e.message,
      other: (_) => context.strings.errorsDefault,
    );
  }
}
