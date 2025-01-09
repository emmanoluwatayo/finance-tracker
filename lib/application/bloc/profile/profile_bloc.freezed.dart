// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProfile,
    required TResult Function(File? imageFile, Uint8List? imageBytes)
        uploadProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchProfile,
    TResult? Function(File? imageFile, Uint8List? imageBytes)?
        uploadProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(File? imageFile, Uint8List? imageBytes)?
        uploadProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchProfile value) fetchProfile,
    required TResult Function(UploadProfileImage value) uploadProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchProfile value)? fetchProfile,
    TResult? Function(UploadProfileImage value)? uploadProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchProfile value)? fetchProfile,
    TResult Function(UploadProfileImage value)? uploadProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchProfileImplCopyWith<$Res> {
  factory _$$FetchProfileImplCopyWith(
          _$FetchProfileImpl value, $Res Function(_$FetchProfileImpl) then) =
      __$$FetchProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$FetchProfileImpl>
    implements _$$FetchProfileImplCopyWith<$Res> {
  __$$FetchProfileImplCopyWithImpl(
      _$FetchProfileImpl _value, $Res Function(_$FetchProfileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchProfileImpl implements FetchProfile {
  const _$FetchProfileImpl();

  @override
  String toString() {
    return 'ProfileEvent.fetchProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProfile,
    required TResult Function(File? imageFile, Uint8List? imageBytes)
        uploadProfileImage,
  }) {
    return fetchProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchProfile,
    TResult? Function(File? imageFile, Uint8List? imageBytes)?
        uploadProfileImage,
  }) {
    return fetchProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(File? imageFile, Uint8List? imageBytes)?
        uploadProfileImage,
    required TResult orElse(),
  }) {
    if (fetchProfile != null) {
      return fetchProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchProfile value) fetchProfile,
    required TResult Function(UploadProfileImage value) uploadProfileImage,
  }) {
    return fetchProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchProfile value)? fetchProfile,
    TResult? Function(UploadProfileImage value)? uploadProfileImage,
  }) {
    return fetchProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchProfile value)? fetchProfile,
    TResult Function(UploadProfileImage value)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (fetchProfile != null) {
      return fetchProfile(this);
    }
    return orElse();
  }
}

abstract class FetchProfile implements ProfileEvent {
  const factory FetchProfile() = _$FetchProfileImpl;
}

/// @nodoc
abstract class _$$UploadProfileImageImplCopyWith<$Res> {
  factory _$$UploadProfileImageImplCopyWith(_$UploadProfileImageImpl value,
          $Res Function(_$UploadProfileImageImpl) then) =
      __$$UploadProfileImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File? imageFile, Uint8List? imageBytes});
}

/// @nodoc
class __$$UploadProfileImageImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UploadProfileImageImpl>
    implements _$$UploadProfileImageImplCopyWith<$Res> {
  __$$UploadProfileImageImplCopyWithImpl(_$UploadProfileImageImpl _value,
      $Res Function(_$UploadProfileImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFile = freezed,
    Object? imageBytes = freezed,
  }) {
    return _then(_$UploadProfileImageImpl(
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      imageBytes: freezed == imageBytes
          ? _value.imageBytes
          : imageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$UploadProfileImageImpl implements UploadProfileImage {
  const _$UploadProfileImageImpl({this.imageFile, this.imageBytes});

  @override
  final File? imageFile;
  @override
  final Uint8List? imageBytes;

  @override
  String toString() {
    return 'ProfileEvent.uploadProfileImage(imageFile: $imageFile, imageBytes: $imageBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadProfileImageImpl &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile) &&
            const DeepCollectionEquality()
                .equals(other.imageBytes, imageBytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, imageFile, const DeepCollectionEquality().hash(imageBytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadProfileImageImplCopyWith<_$UploadProfileImageImpl> get copyWith =>
      __$$UploadProfileImageImplCopyWithImpl<_$UploadProfileImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProfile,
    required TResult Function(File? imageFile, Uint8List? imageBytes)
        uploadProfileImage,
  }) {
    return uploadProfileImage(imageFile, imageBytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchProfile,
    TResult? Function(File? imageFile, Uint8List? imageBytes)?
        uploadProfileImage,
  }) {
    return uploadProfileImage?.call(imageFile, imageBytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(File? imageFile, Uint8List? imageBytes)?
        uploadProfileImage,
    required TResult orElse(),
  }) {
    if (uploadProfileImage != null) {
      return uploadProfileImage(imageFile, imageBytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchProfile value) fetchProfile,
    required TResult Function(UploadProfileImage value) uploadProfileImage,
  }) {
    return uploadProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchProfile value)? fetchProfile,
    TResult? Function(UploadProfileImage value)? uploadProfileImage,
  }) {
    return uploadProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchProfile value)? fetchProfile,
    TResult Function(UploadProfileImage value)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (uploadProfileImage != null) {
      return uploadProfileImage(this);
    }
    return orElse();
  }
}

abstract class UploadProfileImage implements ProfileEvent {
  const factory UploadProfileImage(
      {final File? imageFile,
      final Uint8List? imageBytes}) = _$UploadProfileImageImpl;

  File? get imageFile;
  Uint8List? get imageBytes;
  @JsonKey(ignore: true)
  _$$UploadProfileImageImplCopyWith<_$UploadProfileImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  ProcessingStatus get processingStatus => throw _privateConstructorUsedError;
  CustomError get error => throw _privateConstructorUsedError;
  Map<String, dynamic> get profileDetails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {ProcessingStatus processingStatus,
      CustomError error,
      Map<String, dynamic> profileDetails});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processingStatus = null,
    Object? error = null,
    Object? profileDetails = null,
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
      profileDetails: null == profileDetails
          ? _value.profileDetails
          : profileDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProcessingStatus processingStatus,
      CustomError error,
      Map<String, dynamic> profileDetails});
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processingStatus = null,
    Object? error = null,
    Object? profileDetails = null,
  }) {
    return _then(_$ProfileStateImpl(
      processingStatus: null == processingStatus
          ? _value.processingStatus
          : processingStatus // ignore: cast_nullable_to_non_nullable
              as ProcessingStatus,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CustomError,
      profileDetails: null == profileDetails
          ? _value._profileDetails
          : profileDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {required this.processingStatus,
      required this.error,
      required final Map<String, dynamic> profileDetails})
      : _profileDetails = profileDetails;

  @override
  final ProcessingStatus processingStatus;
  @override
  final CustomError error;
  final Map<String, dynamic> _profileDetails;
  @override
  Map<String, dynamic> get profileDetails {
    if (_profileDetails is EqualUnmodifiableMapView) return _profileDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_profileDetails);
  }

  @override
  String toString() {
    return 'ProfileState(processingStatus: $processingStatus, error: $error, profileDetails: $profileDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.processingStatus, processingStatus) ||
                other.processingStatus == processingStatus) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._profileDetails, _profileDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, processingStatus, error,
      const DeepCollectionEquality().hash(_profileDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final ProcessingStatus processingStatus,
      required final CustomError error,
      required final Map<String, dynamic> profileDetails}) = _$ProfileStateImpl;

  @override
  ProcessingStatus get processingStatus;
  @override
  CustomError get error;
  @override
  Map<String, dynamic> get profileDetails;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
