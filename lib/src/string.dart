extension FancyExtensionsString on String {
  /// if string is empty returns [defaultValue]
  /// otherwise returns value itself
  String ifEmpty(String defaultValue) {
    if (isEmpty) return defaultValue;
    return this;
  }

  /// returns this string with first letter capitalized
  String get capitalizeFirstLetter {
    if (isEmpty) return '';
    if (length == 1) return this[0].toUpperCase();
    return this[0].toUpperCase() + substring(1);
  }
}
