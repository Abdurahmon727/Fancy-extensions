extension FancyExtensionsListNullable<T> on List<T>? {
  ///ifNullOrEmpty
  List<T> ifNullOrEmpty(List<T> val) {
    if (this == null || this!.isEmpty) return val;
    return this!;
  }
}
