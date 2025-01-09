// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_finance_tracker/domain/authentication/i_firebase_auth_facade.dart';
import 'package:personal_finance_tracker/domain/model/custom_error/custom_error.dart';
import '../../../core/shared/enums/processing_status.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final IAuthFacade iAuthFacade;

  SignUpBloc({required this.iAuthFacade}) : super(SignUpState.initial()) {
    on<RegisterWithEmailAndPassword>(signUp);
  }

  // sign up
  Future<void> signUp(
    RegisterWithEmailAndPassword event,
    Emitter<SignUpState> emit,
  ) async {
    emit(
      state.copyWith(processingStatus: ProcessingStatus.waiting),
    );

    try {
      await iAuthFacade.registerWithEmailAndPassword(
        emailAddress: event.emailAddress,
        password: event.password,
        phoneNumber: event.phoneNumber,
        fullName: event.fullName,
      );

      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.success,
        ),
      );
    } on CustomError catch (e) {
      emit(
        state.copyWith(
          processingStatus: ProcessingStatus.error,
          error: e,
        ),
      );
    }
  }
}
