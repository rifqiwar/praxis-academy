import 'dart:io';
void main() {
  int input = int.tryParse(stdin.readLineSync());
print("Masukkan nomor yang anda suka...");
var hasil = stdin.readLineSync();

    if(input < 10){
    print("Anda apik");

    }else{
    print("Anda Joss");
    }

}