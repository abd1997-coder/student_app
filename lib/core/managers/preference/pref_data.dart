import '../../core.dart';

class PrefData {
  static set isSignedIn(bool value) =>
      Managers.prefManager.set(PrefKeys.signedIn, value);

  static bool get isSignedIn =>
      Managers.prefManager.get<bool>(PrefKeys.signedIn) ?? false;

  static set token(String? value) =>
      Managers.prefManager.set(PrefKeys.token, value);

  static String? get token => Managers.prefManager.get<String>(PrefKeys.token);

  static set refreshToken(String? value) =>
      Managers.prefManager.set(PrefKeys.refreshToken, value);

  static String? get refreshToken =>
      Managers.prefManager.get<String>(PrefKeys.refreshToken);

  static set isFirstTime(bool value) =>
      Managers.prefManager.set(PrefKeys.firstTime, value);

  static bool get isFirstTime =>
      Managers.prefManager.get<bool>(PrefKeys.firstTime) ?? true;

  static set fcmTokenSent(bool value) =>
      Managers.prefManager.set(PrefKeys.fcmTokenSent, value);

  static bool get fcmTokenSent =>
      Managers.prefManager.get<bool>(PrefKeys.fcmTokenSent) ?? false;

  static set currencyIdPhone(String? value) =>
      Managers.prefManager.set(PrefKeys.currencyId, value);

  static String? get currencyIdPhone =>
      Managers.prefManager.get<String>(PrefKeys.currencyId);

  static set homeData(String value) =>
      Managers.prefManager.set(PrefKeys.homeData, value);

  static String get homeData =>
      Managers.prefManager.get<String>(PrefKeys.homeData) ?? '';

  static setMaterialData(String id, String value) =>
      Managers.prefManager.set("${PrefKeys.materialData}$id", value);

  static String? getMaterialData(String id) =>
      Managers.prefManager.get<String>("${PrefKeys.materialData}$id");

  // balance
  static setUserBalance(String balance) =>
      Managers.prefManager.set(PrefKeys.balance, balance);

  static String? getUserBalance() =>
      Managers.prefManager.get<String>(PrefKeys.balance);
}
