import '../../core.dart';

abstract interface class PreferenceManager {
  T? get<T>(String key);

  Future<void> set(String key, dynamic value);

  Future<void> remove(String key);

  Future<void> clear();
}

@reopen
class PreferenceManagerImpl extends PreferenceManager {
  PreferenceManagerImpl(this._preferences);

  final SharedPreferences _preferences;

  @override
  T? get<T>(String key) {
    final String? value = _preferences.getString(key);
    // Logger().i('Getting from cache  key:: $key');
    final dynamic decodedValue = jsonDecode(value ?? '{}');
    // print(decodedValue.runtimeType);
    // print(decodedValue);
    if (decodedValue is T) {
      // Logger().i('The value in cache with key $key is $decodedValue');
      return decodedValue;
    } else {
      return null;
    }
  }

  @override
  Future<void> set(String key, dynamic value) async {
    // Logger().i('Caching in key:: $key value :: $value');
    final String encodedValue = jsonEncode(value);
    await _preferences.setString(key, encodedValue);
  }

  @override
  Future<void> remove(String key) async {
    await _preferences.remove(key);
  }

  @override
  Future<void> clear() async {
    _preferences.clear();
  }
}
