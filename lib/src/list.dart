extension FancyExtensionsList<T> on List<T> {
  ///ifEmpty
  List<T> ifEmpty(List<T> val) {
    if (isEmpty) return val;
    return this;
  }

  /// Safe way of getting first element
  /// returns first element of list if it exists otherwise returns null
  T? get firstOrNull {
    if (isEmpty) return null;
    return this[0];
  }

  /// Safe way of getting last element
  /// returns first last of list if it exists otherwise returns null
  T? get lastOrNull {
    if (isEmpty) return null;
    return this[length - 1];
  }

  /// Safe way of getting element at [index]
  /// returns first last of list if it exists otherwise returns null
  T? elementAtOrNull(int index) {
    try {
      final element = this[index];
      return element;
    } catch (_) {
      return null;
    }
  }
}
