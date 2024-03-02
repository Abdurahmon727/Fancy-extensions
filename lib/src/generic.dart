extension FancyExtensionsGeneric<T> on T {
  ///if condition is true returns [ifTrue] otherwise returns value itself
  T ifReturn(bool condition, T ifTrue) {
    if (condition) return ifTrue;
    return this;
  }
}
