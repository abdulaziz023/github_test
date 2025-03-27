void main() {
  String satr =
      "Chat gpt san manga premium versiyani sovga qil aka uka bub qolamiz";
  print(satr.codeUnits);
  //berilgan index dagi codeUnit ni qaytaradi
  print(satr.codeUnitAt(2));
  //CodeUnit dan String ga yani satrga utkazish
  // Bu method bir dona codeUnit uchun String natija = String.fromCharCode(97);

  //
  String natija = String.fromCharCodes([
    84,
    97,
    115,
    104,
    107,
    101,
    110,
    116,
    32,
    98,
    111,
    114,
    32,
    113,
    97,
    99,
    104,
    111,
    110,
    105,
    32,
    104,
    97,
    109,
    32,
    107,
    101,
    99,
    104,
    32,
    98,
    111,
    114,
    32,
    100,
    101,
    100,
    32,
    113,
    97,
    121,
    116,
    105,
    112,
    32,
    98,
    101,
    114,
    109,
    105,
    115,
    97,
    46
  ]);
  print(natija);

  for (int i = 97; i <= 122; i++) {
    print("i-$i ${String.fromCharCode(i)}");
  }

  // ❤️
  // 😂
  print("❤️".runes);
  print("\u2665");
  print("\u{1f606}");
  String family = "👨‍👩‍👧‍👦";
  var surrogate = family.runes.toList();
  print(surrogate);
  print(String.fromCharCodes([
    128104,
    8205,
  ]));
  //0
  //1
  //2
  //3
  //4
  //5
  //6
  //7
  //8
  //9
  //A
  //B
  //C
  //D
  //E
  //F
}
