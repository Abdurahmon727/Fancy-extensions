import 'package:fancy_extensions/fancy_extensions.dart';

class Data {}

void main() {
  final List<List<int>?> array = [
    null,
    [0, 1],
    []
  ];

  final Data? dataInstance = null;
  dataInstance.let((it) => it);

  ///generic
  final int? integer = 5;

  integer?.let((type) {
    type.isEven;
  });
  final notFive = integer.ifReturn(integer == 5, 0);

  final double? double2 = null;
  double2.ifReturn(true, 0);

  ///list
  final List<int>? list = null;
  final data = list.ifNull([]);

  ///string
  final String string = '';
  final String? stringNullable = null;

  string.ifReturn(false, '');
  stringNullable.ifNullOrEmpty('');
  stringNullable.ifReturn(false, string);

  print(dataInstance);
}
