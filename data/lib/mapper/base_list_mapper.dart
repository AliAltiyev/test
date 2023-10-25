abstract class BaseListMapper<T, V> {
  List<T> toEntity(List<V> model);
  List<V> toModel(List<T> model);
}
