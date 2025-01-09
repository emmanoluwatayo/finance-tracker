part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required ProcessingStatus processingStatus,
    required CustomError error,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        processingStatus: ProcessingStatus.initial,
        error: CustomError.initial(),
      );
}
