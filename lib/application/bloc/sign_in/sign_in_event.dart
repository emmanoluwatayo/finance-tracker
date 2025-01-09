part of 'sign_in_bloc.dart';


@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.loginWithEmailAndPassword({
    required String emailAddress,
    required String password,
    required BuildContext context,
  }) = LoginWithEmailAndPassword;
}
