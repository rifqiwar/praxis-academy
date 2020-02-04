import 'dart:io';

void main(){

  print ("Haloo Gais");
  print ("Haloo Cek ya");

var nama = ['nama saya', 'nama kamu', 'nama dia'];


int input = int.tryParse(stdin.readLineSync());
print("Masukkan nomor yang anda suka...");
var hasil = stdin.readLineSync();

    if(input < 10){
    print("Anda apik");

    }else{
    print("Anda Joss");
    }




}



bool checkbool (String nilai){
  if (nilai == 'true')
  {
    return true;
  } else if (nilai == 'false'){
    return false;
  }
}