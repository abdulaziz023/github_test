void main() {
  double a = 12.9;
  print(a.hashCode);
  print(a.isFinite);
  print(a.isInfinite);
  print(a.isNegative);
  print(a.runtimeType);
  print(a.abs());
  //ceil 12.5 ==>13 12.1 bulsa ham 13 ga int qilib yaxlitlaydi
  print(a.ceil());
  //ceilToDouble 12.5 ==>13 12.1 bulsa ham 13.0 ga double qilib yaxlitlaydi
  print(a.ceilToDouble());
  //clamp O'rta qiymatini qaytaradi
  print(a.clamp(2, 10));
  //Taqqoslaydi ==> -1, 0, 1
  print(a.compareTo(12));
  //floor eng yaqin butun songa yaxlitlaydi int qilib yaxlitlaydi
  print(a.floor());
  //floorToDouble eng yaqin butun songa yaxlitlaydi double qilib yaxlitlaydi
  print(a.floorToDouble());
  //Ayirmasi
  print(a.remainder(2));
  //
  print(a);
}
