extension FancyExtension on List<dynamic> {
  List<dynamic> ifNullOrEmpty(List<dynamic> val) {
    // ignore: unnecessary_null_comparison
    if (isEmpty || this == null) return val;
    return this;
  }
}
