import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_failure.freezed.dart';

@freezed
class NetworkFailure with _$NetworkFailure {
  const factory NetworkFailure.noConnection() = _NoConnection;
  const factory NetworkFailure.withMessage(String message) = _WithReason;
  const factory NetworkFailure.other() = _Other;
}
