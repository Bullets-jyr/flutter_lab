some() {
  throw FormatException('my exception info');
}

void main() {
  var list = [10, 20, 30];
  for (var data in list) {
    print(data);
  }
  try {
    print('step1...');
    some();
    print('step2...');
  } on FormatException catch(e) {
    print('step3...$e');
  } on Exception {
    print('step4...');
  } finally {
    print('step5...');
  }
  print('step6...');
}