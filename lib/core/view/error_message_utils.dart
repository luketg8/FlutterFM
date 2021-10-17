import 'package:flutter/material.dart';
import 'package:flutter_fm/core/domain/network_failure.dart';
import 'package:flutter_fm/core/view/context_extensions.dart';

class ErrorMessageUtils {
  //TODO: Remove dynamic
  static String resolveErrorMessage(BuildContext context, dynamic error) {
    if (error is NetworkFailure) {
      return error.map(
        noConnection: (_) => context.strings.errorsNoConnection,
        withMessage: (e) => e.message,
        other: (_) => context.strings.errorsDefault,
      );
    }

    return context.strings.errorsDefault;
  }
}
