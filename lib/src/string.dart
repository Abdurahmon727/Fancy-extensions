extension FancyExtensionsString on String {
  ///
  String ifEmpty(String val) {
    if (isEmpty) return val;
    return this;
  }

  ///
  String get capitilizeFirstLetter {
    if (isEmpty) return '';
    if (length == 1) return this[0].toUpperCase();
    return this[0].toUpperCase() + substring(1);
  }
}
