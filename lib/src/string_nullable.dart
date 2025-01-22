extension FancyExtensionsStringNullable on String? {
  /// returns [defaultValue] if this nullable string is either null or empty
  /// otherwise returns value itself
  String ifNullOrEmpty(String defaultValue) {
    if (this == null || this!.isEmpty) return defaultValue;
    return this!;
  }

  /// returns firstLetter if it exists
  /// otherwise returns empty string
  String get firstLetterOrBlankString {
    if (this == null || this!.isEmpty) return '';
    return this![0];
  }
}
