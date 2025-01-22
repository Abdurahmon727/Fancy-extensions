extension FancyExtensionsListNullable<T> on List<T>? {
  /// returns [defaultValue] if this nullable list is either null or empty
  List<T> ifNullOrEmpty(List<T> defaultValue) {
    if (this == null || this!.isEmpty) return defaultValue;
    return this!;
  }

  /// Safe way of getting first element
  /// returns first element of list if it exists otherwise returns null
  T? get firstOrNull {
    if (this == null || this!.isEmpty) return null;
    return this![0];
  }

  /// Safe way of getting last element
  /// returns first last of list if it exists otherwise returns null
  T? get lastOrNull {
    if (this == null || this!.isEmpty) return null;
    return this![this!.length - 1];
  }

  /// Safe way of getting element at [index]
  /// returns first last of list if it exists otherwise returns null
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
