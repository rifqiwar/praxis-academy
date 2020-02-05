<h1> Kasus</h1>

Kerjakan kasus <a href = https://eturo.blogspot.com/2012/01/tutorial-simple-atm-machine-program-in.html>ATM </a> dengan menggunakan Dart.

<br>
<ul>
  <li>Struktur dasar dan konsep penting program Dart</li>
  <li>Kata kunci (keywords)</li>
  <li>Lebih lanjut dengan variabel: var, final, const</li>
  <li>Tipe data Dart: numbers, strings, booleans, runes, symbols</li>
  <li>Fungsi / Function</li>
  <li>Operator</li>
  <li>Pengendali alur program: if ... else if ... else, looping for, while, do ... while, break dan continue, switch dan case, serta assert.</li>
  <li>Error dan exception handling</li>
</ul>
di  

mengubah file java dibawah menjadi Dart
<br>

      import java.util.Scanner;
      import java.io.*;
      public class ATMMachine
      {   
        public static void checkBalance()
        {
            System.out.println("\tYour current balance is " + BalanceInquiry.getBalance());
        }
        
        public static void withdrawMoney()
        {
            if(BalanceInquiry.balance==0)
            {
                System.out.println("\tYour current balance is zero.");
                System.out.println("\tYou cannot withdraw!");
                System.out.println("\tYou need to deposit money first.");
            }
            else if(BalanceInquiry.balance<=500)
            {
                System.out.println("\tYou do not have sufficient money to withdraw");
                System.out.println("\tChecked your balance to see your money in the bank.");
            }
            else if(Withdraw.withdraw > BalanceInquiry.balance)
            {
                System.out.println("\tThe amount you withdraw is greater than to your balance");
                System.out.println("\tPlease check the amount you entered.");
            }
            else
            {
                BalanceInquiry.balance = BalanceInquiry.balance - Withdraw.withdraw;
                System.out.println("\n\tYou withdraw the amount of Php " + Withdraw.withdraw);
            }
        }
                        
        public static void depositMoney()
        {
            System.out.println("\tYou deposited the amount of " + Deposit.getDeposit());
        }
        
        public static void main(String[] args)
        {
            Scanner read = new Scanner(System.in);
            int select = 0;
            int choice = 0;
            
            System.out.println("====================================================");
            System.out.println("\tWelcome to this simple ATM machine");
            System.out.println("====================================================");
            System.out.println();
            
            do
            {try
                    {
                do {
                    
                        System.out.println("\tPlease select ATM Transactions");
                        System.out.println("\tPress [1] Deposit");
                        System.out.println("\tPress [2] Withdraw");
                        System.out.println("\tPress [3] Balance Inquiry");
                        System.out.println("\tPress [4] Exit");
                    
                        System.out.print("\n\tWhat would you like to do? ");
                        select = read.nextInt();
        
                            if(select>4)
                            {
                                System.out.println("\n\tPlease select correct transaction.");
                            }
                            else
                            {
                            switch (select)
                            {
                                case 1:
                                    System.out.print("\n\tEnter the amount of money to deposit: ");
                                    Deposit.deposit = read.nextDouble();
                                    BalanceInquiry.balance = Deposit.deposit + BalanceInquiry.balance;
                                    depositMoney();
                                    break;
                                    
                                case 2:
                                    
                                    System.out.print("\n\tTo withdraw, make sure that you have sufficient balance in your account.");
                                    System.out.println();
                                    System.out.print("\tEnter amount of money to withdraw: ");
                                    Withdraw.withdraw = read.nextDouble();
                                    withdrawMoney();
                                    break;
                                    
                                case 3:
                                    checkBalance();
                                    break;
                                
                                default:
                                    System.out.print("\n\tTransaction exited.");
                                    break;
                                    
                            }
                        }               
                              
                }while(select>4);
                
                do {
                    try
                    {
                        System.out.println("\n\tWould you like to try another transaction?");
                        System.out.println("\n\tPress [1] Yes \n\tPress [2] No");
                        System.out.print("\tEnter choice: ");
                        choice = read.nextInt();
                    
                            if(choice>2)
                            {
                                System.out.print("\n\tPlease select correct choice.");
                            }
                        }
                        
                        catch(Exception e)
                        {
                            System.out.println("\tError Input! Please enter a number only.");
                            read = new Scanner(System.in);
                            System.out.println("\tEnter yout choice:");
                            choice = read.nextInt();
                        }
                } while(choice>2);
            }
            catch(Exception e)
                    {
                        System.out.println("\tError Input! Please enter a number only.");
                        read = new Scanner(System.in);
                        System.out.println("\tEnter yout choice:");
                        select = read.nextInt();
                    }
                    
            }while(choice<=1);
            
            System.out.println("\n\tThank you for using this simple ATM Machine.");
        }
      }
