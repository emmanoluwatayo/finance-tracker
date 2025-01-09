// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInEvent {
  String get emailAddress => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String emailAddress, String password, BuildContext context)
        loginWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String emailAddress, String password, BuildContext context)?
        loginWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String emailAddress, String password, BuildContext context)?
        loginWithEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInEventCopyWith<SignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
  @useResult
  $Res call({String emailAddress, String password, BuildContext context});
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginWithEmailAndPasswordImplCopyWith<$Res>
    implements $SignInEventCopyWith<$Res> {
  factory _$$LoginWithEmailAndPasswordImplCopyWith(
          _$LoginWithEmailAndPasswordImpl value,
          $Res Function(_$LoginWithEmailAndPasswordImpl) then) =
      __$$LoginWithEmailAndPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String emailAddress, String password, BuildContext context});
}

/// @nodoc
class __$$LoginWithEmailAndPasswordImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$LoginWithEmailAndPasswordImpl>
    implements _$$LoginWithEmailAndPasswordImplCopyWith<$Res> {
  __$$LoginWithEmailAndPasswordImplCopyWithImpl(
      _$LoginWithEmailAndPasswordImpl _value,
      $Res Function(_$LoginWithEmailAndPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? context = null,
  }) {
    return _then(_$LoginWithEmailAndPasswordImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$LoginWithEmailAndPasswordImpl implements LoginWithEmailAndPassword {
  const _$LoginWithEmailAndPasswordImpl(
      {required this.emailAddress,
      required this.password,
      required this.context});

  @override
  final String emailAddress;
  @override
  final String password;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SignInEvent.loginWithEmailAndPassword(emailAddress: $emailAddress, password: $password, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithEmailAndPasswordImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginWithEmailAndPasswordImplCopyWith<_$LoginWithEmailAndPasswordImpl>
      get copyWith => __$$LoginWithEmailAndPasswordImplCopyWithImpl<
          _$LoginWithEmailAndPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String emailAddress, String password, BuildContext context)
        loginWithEmailAndPassword,
  }) {
    return loginWithEmailAndPassword(emailAddress, password, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String emailAddress, String password, BuildContext context)?
        loginWithEmailAndPassword,
  }) {
    return loginWithEmailAndPassword?.call(emailAddress, password, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String emailAddress, String password, BuildContext context)?
        loginWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPassword != null) {
      return loginWithEmailAndPassword(emailAddress, password, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
  }) {
    return loginWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
  }) {
    return loginWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPassword != null) {
      return loginWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class LoginWithEmailAndPassword implements SignInEvent {
  const factory LoginWithEmailAndPassword(
      {required final String emailAddress,
      required final String password,
      required final BuildContext context}) = _$LoginWithEmailAndPasswordImpl;

  @override
  String get emailAddress;
  @override
  String get password;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$LoginWithEmailAndPasswordImplCopyWith<_$LoginWithEmailAndPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInState {
  ProcessingStatus get processingStatus => throw _privateConstructorUsedError;
  CustomError get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call({ProcessingStatus processingStatus, CustomError error});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processingStatus = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      processingStatus: null == processingStatus
          ? _value.processingStatus
          : processingStatus // ignore: cast_nullable_to_non_nullable
              as ProcessingStatus,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CustomError,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInStateImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$SignInStateImplCopyWith(
          _$SignInStateImpl value, $Res Function(_$SignInStateImpl) then) =
      __$$SignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProcessingStatus processingStatus, CustomError error});
}

/// @nodoc
class __$$SignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateImpl>
    implements _$$SignInStateImplCopyWith<$Res> {
  __$$SignInStateImplCopyWithImpl(
      _$SignInStateImpl _value, $Res Function(_$SignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processingStatus = null,
    Object? error = null,
  }) {
    return _then(_$SignInStateImpl(
      processingStatus: null == processingStatus
          ? _value.processingStatus
          : processingStatus // ignore: cast_nullable_to_non_nullable
              as ProcessingStatus,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CustomError,
    ));
  }
}

/// @nodoc

class _$SignInStateImpl implements _SignInState {
  const _$SignInStateImpl(
      {required this.processingStatus, required this.error});

  @override
  final ProcessingStatus processingStatus;
  @override
  final CustomError error;

  @override
  String toString() {
    return 'SignInState(processingStatus: $processingStatus, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateImpl &&
            (identical(other.processingStatus, processingStatus) ||
                other.processingStatus == processingStatus) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, processingStatus, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      __$$SignInStateImplCopyWithImpl<_$SignInStateImpl>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {required final ProcessingStatus processingStatus,
      required final CustomError error}) = _$SignInStateImpl;

  @override
  ProcessingStatus get processingStatus;
  @override
  CustomError get error;
  @override
  @JsonKey(ignore: true)
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
