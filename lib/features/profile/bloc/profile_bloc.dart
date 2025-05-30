import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/features/profile/data/model/profile_model.dart';
import 'package:student_app/features/profile/data/profile_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._profileRepository) : super(const _Initial()) {
    on<ProfileEvent>((ProfileEvent event, Emitter<ProfileState> emit) async {
      await event.map(
        getProfile: (_$ProfileEvent value) => getProfile(event, emit),
      );
    });
  }

  final ProfileRepository _profileRepository;

  Future<void> getProfile(
    ProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      event as _GetProfile;
      emit(const ProfileState.getProfileLoading());
      ProfileResults profileResults = await _profileRepository.getProfile();
      emit(ProfileState.getProfileSuccess(profileResults: profileResults));
    } catch (e) {
      emit(const ProfileState.getProfileFailed());
    }
  }
}
