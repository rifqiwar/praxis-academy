import 'dart:io';

void main() {
  print("============================================================");
  print("           Welcome to this simlpe ATM machine");
  print("============================================================");
  print("");
  print("           Please select ATM Transaction");
  print("           Press [1]  Deposit");
  print("           Press [2]  Whitdraw");
  print("           Press [3]  Balance Inquiry");
  print("           Press [4]  Exit");
  print(" ");      
  print("What would you like do ?");
  
  int input = int.tryParse(stdin.readLineSync());

  switch (input){
    case 1:
    deposit();
    break;

     case 2:
    withdraw();
    break;

      case 3:
    balance_i();
    break;

    case 4:
    exit();
    break;


    default:
    print("\n\tTransaction exited.");

    }

}

// int cek(int angka){
//   if (angka % 2 == 0){
//     return 0;
//   }else{
//     return 1;
//   }

// }
void deposit(){
  double depo = 0;
  print("Your Deposit is Rp 5.000.000,-");

  main();
}
void withdraw(){
  double withd = 0;
  print("Your withdraw is Rp 1.000.000,-");

  main();
}
void balance_i(){
  double sal = 0;
  print("Your Balance Inquiry is Rp 1.690.000.000,-");

  main();
}
void exit(){
  double exit = 0;
  print("\n\tTransaction exited. ");
}


