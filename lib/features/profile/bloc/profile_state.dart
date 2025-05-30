part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.getProfileLoading() = _GetProfileLoading;
  const factory ProfileState.getProfileSuccess({
    @Default(null) ProfileResults? profileResults,
  }) = _GetProfileSuccess;
  const factory ProfileState.getProfileFailed({
    @Default(null) GeneralException? generalException,
  }) = _GetProfileFailed;
}
