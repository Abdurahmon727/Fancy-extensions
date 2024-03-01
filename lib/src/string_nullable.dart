extension FancyExtensionsStringNullable on String? {
  ///
  String ifNullOrEmpty(String val) {
    if (this == null || this!.isEmpty) return val;
    return this!;
  }

  String firstLetterOrBlankString() {
    if (this == null || this!.isEmpty) return '';
    return this![0];
  }
}
