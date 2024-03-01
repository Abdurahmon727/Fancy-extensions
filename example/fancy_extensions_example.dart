import 'package:fancy_extensions/fancy_extensions.dart';

void main() {
  final List<List<int>?> array = [
    null,
    [0, 1],
    []
  ];

  ///generic
  final int integer = 5;
  final notFive = integer.ifReturn(integer == 5, 0);

  final double? double2 = null;
  double2.ifReturn(true, 0);

  ///list
  final List<int>? list = null;
  final data = list.ifNull([]);
  list.firstOrNull;

  ///string
  final String string = '';
  final String? stringNullable = null;

  string.ifReturn(false, '');
  stringNullable.ifNullOrEmpty('');
  stringNullable.ifReturn(false, string);

  print(data);
}
