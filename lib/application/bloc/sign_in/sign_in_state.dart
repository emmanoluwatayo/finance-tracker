part of 'sign_in_bloc.dart';


@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required ProcessingStatus processingStatus,
    required CustomError error,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        processingStatus: ProcessingStatus.initial,
        error: CustomError.initial(),
      );
}
