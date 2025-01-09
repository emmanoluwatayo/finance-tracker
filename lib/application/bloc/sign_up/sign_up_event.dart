part of 'sign_up_bloc.dart';


@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
    required String phoneNumber,
    required String fullName,
  }) = RegisterWithEmailAndPassword;

  
}
