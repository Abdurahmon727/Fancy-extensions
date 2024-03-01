extension FancyExtensionsListNullable<T> on List<T>? {
  ///ifNullOrEmpty
  List<T> ifNullOrEmpty(List<T> val) {
    if (this == null || this!.isEmpty) return val;
    return this!;
  }

  /// firstOrNull
  T? get firstOrNull {
    if (this == null || this!.isEmpty) return null;
    return this![0];
  }

  ///
  T? get lastOrNull {
    if (this == null || this!.isEmpty) return null;
    return this![this!.length - 1];
  }

  ///
  T? elementAtOrNull(int index) {
    if (this == null) return null;
    try {
      final element = this![index];
      return element;
    } catch (_) {
      return null;
    }
  }
}
