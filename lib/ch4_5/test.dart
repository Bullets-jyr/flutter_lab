int? a1;
late int a2;

void main() {
  a2 = 10;

  a1 = a2; // int -> int? : 암시적
  a2 = a1 as int; // int? -> int : 명시적
}