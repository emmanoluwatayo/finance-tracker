part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.fetchProfile() = FetchProfile;

  const factory ProfileEvent.uploadProfileImage({
    final File? imageFile,
    final Uint8List? imageBytes,
  }) = UploadProfileImage;
}
