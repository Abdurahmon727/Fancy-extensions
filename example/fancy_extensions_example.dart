import 'package:fancy_extensions/fancy_extensions.dart';

class Me {}

void main() {
  final List<Me>? nullableList = null;
  final data = nullableList.ifNullOrEmpty([]);
  print(data);
}
