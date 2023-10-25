abstract class LocaleStorage {
  Future<void> save(
    String key,
    String value,
  );
  Future<String> get(String key);
}
