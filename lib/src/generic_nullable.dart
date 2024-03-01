extension FancyExtensionsGenericNullable<T> on T? {
  ///ifNull
  T ifNull(T val) {
    if (this == null) return val;
    return this!;
  }
}
