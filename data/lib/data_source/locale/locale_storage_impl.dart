import 'package:data/data_source/locale/locale_storage.dart';
import 'package:data/data.dart';

final class LocaleStorageImpl implements LocaleStorage {
  final SharedPreferences _sharedPreferences;

  const LocaleStorageImpl({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  @override
  Future<String> get(String key) async {
    return _sharedPreferences.getString(key) ?? '';
  }

  @override
  Future<void> save(
    String key,
    String value,
  ) async {
    _sharedPreferences.setString(key, value);
  }
}
