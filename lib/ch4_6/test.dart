void main() {
  int? no1 = 10;

  no1 = null;

  bool? result = no1?.isEven;

  int? data3;
  data3 ??= 10;
  print('data3: $data3');
  data3 ??= null;
  print('data3: $data3');

  String? data4 = 'hello';
  String? result1 = data4 ?? 'world';
  print('result1: $result1');
  data4 = null;
  result1 = data4 ?? 'world';
  print('result1: $result1');
}