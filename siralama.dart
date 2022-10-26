import 'dart:io';

void main() {
  List list = [];

  while (list.length < 10) {
    stdout.write('${list.length + 1} . elemanı giriniz: ');
    var girdi = stdin.readLineSync()!;

    try {
      double.parse(girdi);
      list.add(girdi);
    } on Exception {
      print("\nLütfen geçerli bir sayı giriniz.");
    }
  }

  list.sort();
  stdout.write("Küçükten büyüğe sıralı liste:");
  stdout.write(list);
  print("\n");
  stdout.write("Büyükten küçüğe sıralı liste:");
  stdout.write(list.reversed);
}
