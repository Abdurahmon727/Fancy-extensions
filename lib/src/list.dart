extension FancyExtensionsList<T> on List<T> {
  ///ifEmpty
  List<T> ifEmpty(List<T> val) {
    if (isEmpty) return val;
    return this;
  }

  ///firstOrNull
  T? get firstOrNull {
    if (isEmpty) return null;
    return this[0];
  }

  ///
  T? get lastOrNull {
    if (isEmpty) return null;
    return this[length - 1];
  }

  ///
  T? elementAtOrNull(int index) {
    try {
      final element = this[index];
      return element;
    } catch (_) {
      return null;
    }
  }
}
