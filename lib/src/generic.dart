extension FancyExtensionsGeneric<T> on T {
  ///if condition is true returns [ifTrue] otherwise returns value itself
  T ifReturn(bool condition, T ifTrue) {
    if (condition) return ifTrue;
    return this;
  }

  ///Calls the specified function [block] with it value as its argument
  void let(Function(T it) block) {
    if (this == null) return;
    block(this!);
    return;
  }
}
