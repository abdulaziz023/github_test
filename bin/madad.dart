void main() {
  //named reuqied parametr constructor
  //nomi bilan chaqirib olinadigan
  a(a: "a", id: 1, color: "black");
  Audi audi = Audi(
    "",
    12,
    32400,
  );
}
//named parametr constructor
//named required parametr constructor
//named optional parametr constructor

//required parametr constructor
//optional parametr constructor
class Audi {
  String name;
  int id;
  int price;
  Audi(this.name, this.id, this.price, [int? s]);
  //named constructor
  //foydalanish qoidasi agar field lar null yoki
  //default qiymati bo'lmasa error aks holda ishlaydi
  // Audi.electron(String str) : this(name: str);
}

//optional parametr constructor
//malumot turini null qilish yoki default valu berish talab etiladi
//ikkalasini ham qilishingiz mumkun
void a({required String a, required int id, String color = ""}) {}
