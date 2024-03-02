// ignore_for_file: unused_local_variable, dead_code

import 'package:fancy_extensions/fancy_extensions.dart';

class SampleModel {
  SampleModel({this.integer, this.string});

  int? integer;
  String? string;

  SampleModel copyWith({
    int? integer,
    String? string,
  }) =>
      SampleModel(
        integer: integer ?? this.integer,
        string: string ?? this.string,
      );
}

void main() {
  /// ifNull
  SampleModel? nullableVariable;
  final nonNullable = nullableVariable.ifNull(SampleModel());

  /// ifReturn
  final modifierVariable = nonNullable.ifReturn(
      nonNullable.integer == null, nonNullable.copyWith(integer: 5));

  /// let
  nullableVariable.let((it) {
    it.integer = 5;
    it.string = '';
  });

  /// *** Lists
  List<SampleModel>? nullableList;

  /// ifNullOrEmpty
  final uiList = nullableList.ifNullOrEmpty([SampleModel()]);

  /// firstOrNull
  final firstItem = nullableList.firstOrNull;

  /// elementAtOrNull
  final element = nullableList.elementAtOrNull(5);

  /// *** String
  String? nullableString;
  String nonNullableString = nullableString.ifNull('');

  /// ifEmpty
  final nonEmptyString = nonNullableString.ifEmpty('defaultValue');

  /// ifNullOrEmpty
  final uiString = nullableString.ifNullOrEmpty('Not Found');
}
