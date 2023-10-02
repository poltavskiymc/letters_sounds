import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:letters_sounds/core/error/app_error.dart';

part 'state_status.freezed.dart';

@freezed
class StateStatus with _$StateStatus {
  const factory StateStatus.loading() = StateStatusLoading;

  const factory StateStatus.success() = StateStatusSuccess;

  const factory StateStatus.error([AppError? error]) = StateStatusError;
}
