extension FancyExtensionsGenericNullable<T> on T? {
  /// if null returns [val] otherwise returns value itself
  T ifNull(T val) {
    if (this == null) return val;
    return this!;
  }
}
