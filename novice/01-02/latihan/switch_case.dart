import 'dart:io';

void main() {
  print("masukkan inputan angka...");
  int num = int.tryParse(stdin.readLineSync());

  switch (cek(num)){
    case 1:
    print("angka adalah ganjil...");
    break;
    default:
    print("angka adalah genap");

  }

}

int cek(int angka){
  if (angka % 2 == 0){
    return 0;
  }else{
    return 1;
  }

}