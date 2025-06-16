import '../../../features/auth/data/data.dart';
import '../../core.dart';

class UserLocalDataSource {
  Future<void> storeUser(UserData userData) async {
    await Managers.prefManager.set(PrefKeys.user, userData.toMap());
    // Logger().i('Storing User ${userData.toJson()}');
  }

  Future<void> storeAuthData({
    required String? refreshToken,
    required String? token,
    required UserData? userData,
  }) async {
    if (refreshToken == null || token == null || userData == null) {
      return;
    }
    PrefData.token = token;
    PrefData.refreshToken = refreshToken;
    PrefData.isSignedIn = true;
    // GlobalNotifiers.profileNotifier.value =
    //     !GlobalNotifiers.profileNotifier.value;
    await getIt<AppManagerCubit>().storeUser(userData);
  }

  UserData? getUser() {
    final Map<String, dynamic>? json = Managers.prefManager
        .get<Map<String, dynamic>>(PrefKeys.user);
    if (json == null || json.isEmpty) {
      return null;
    }
    // Logger().i('Getting User ${UserData.fromJson(json.cast())}');
    return UserData.fromJson(json.cast());
  }

  Future<void> deleteUser() async {
    // Logger().i('Deleting User...}');
    await Managers.prefManager.remove(PrefKeys.user);
  }

  Future<void> logout() async {
    PrefData.token = null;
    PrefData.refreshToken = null;
    PrefData.isSignedIn = false;
    await Future.wait(<Future<void>>[deleteUser()]);
  }
}
