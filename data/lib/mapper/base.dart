
abstract class BaseMapper<T, V> {
  T toEntity(V model);
  V toModel(T model);
}
