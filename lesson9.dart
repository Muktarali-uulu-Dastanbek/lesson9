import 'dart:math';

void main(List<String> args) {
  showUser("Dastan", 20);
  showList(["ПН", "ВТ", "СР", "ЧТ", "ПТ", "СБ", "ВС"]);
  print("gipotenuza=${pifagor(3, 4)}");
  symbol("#", 3, 4);
  piramida(3);
  proverka("345660"); //otvet - da
  proverka2("33213"); //otvet - da
  proverka3("barboza"); //otvet - net
}

//1-zadacha
void showUser(String name, int age) {
  print("$name $age");
}

//2-zadacha
void showList(List dayOfWeek) {
  print("First - ${dayOfWeek.first}");
  print("Last - ${dayOfWeek.last}");
}

//3-zadacha
num pifagor(num a, num b) {
  num c;
  c = sqrt((a * a + b * b));
  return c;
}

//4-zadacha
void symbol(String symboll, int width, int height) {
  for (int i = 1; i <= height; i++) {
    print(symboll * width);
  }
}

//5-zadacha
void piramida(int height) {
  int c = height;
  for (int i = 1; c != 0; i += 2) {
    --c;
    print("${" " * c}${"*" * i}");
  }
}

//6-zadacha
void proverka(String tsifra) {
  int a;
  int b;
  int c;
  c = int.parse(tsifra);
  a = c ~/ 1000;
  b = c % 1000;

  int x, y, z;
  int e, f, g;

  x = a ~/ 100;
  y = a % 100 ~/ 10;
  z = a % 10;

  e = b ~/ 100;
  f = b % 100 ~/ 10;
  g = b % 10;
  (x + y + z) == (e + f + g) ? print("da") : print("net");
}

//7-zadacha
void proverka2(String tsifra) {
  int a;
  a = int.parse(tsifra[0]);
  if (a == 1 || a == 2 || a == 3) {
    print("da");
  } else {
    print("net");
  }
}

//8-zadacha
void proverka3(String slovo) {
  if (slovo[0] == "a") {
    print("da");
  } else {
    print("net");
  }
}
