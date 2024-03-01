extension FancyExtensionsGeneric<T> on T {
  ///if
  T ifReturn(bool condition, T ifTrue) {
    if (condition) return ifTrue;
    return this;
  }

  ///
}
