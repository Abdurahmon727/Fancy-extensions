extension FancyExtensionsList<T> on List<T> {
  ///ifEmpty
  List<T> ifEmpty(List<T> val) {
    if (isEmpty) return val;
    return this;
  }
}
