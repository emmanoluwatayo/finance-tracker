// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_finance_tracker/domain/authentication/i_firebase_auth_facade.dart';
import 'package:personal_finance_tracker/domain/model/custom_error/custom_error.dart';
import '../../../core/shared/enums/processing_status.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade iAuthFacade;

  SignInBloc({required this.iAuthFacade}) : super(SignInState.initial()) {
    on<LoginWithEmailAndPassword>(signIn);
  }

  // sign in
  Future<void> signIn(
    LoginWithEmailAndPassword event,
    Emitter<SignInState> emit,
  ) async {
    emit(
      state.copyWith(processingStatus: ProcessingStatus.waiting),
    );

    try {
      await iAuthFacade.signInWithEmailAndPassword(
        emailAddress: event.emailAddress,
        password: event.password,
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
