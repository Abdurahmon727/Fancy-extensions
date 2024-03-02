extension FancyExtensionsGenericNullable<T> on T? {
  /// if null returns [val] otherwise returns value itself
  T ifNull(T val) {
    if (this == null) return val;
    return this!;
  }

  /// Convert nullable to non-nullable
  /// Calls the specified function [block] with it value as its argument
  void let(Function(T it) block) {
    if (this == null) return;
    block(this!);
    return;
  }
}
