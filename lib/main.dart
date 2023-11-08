//A PROGRAM - MATTHEW MIRACLE CHINEDUM - 09130103138
/*
This is allows User to Create an account or Signin to an app if an Account has Already Existed
once the User login, He can update his timeline or Write a Post

ALGORITHM
1. Display the App name and Welcome the User
2. Prompt The User to create an Account or Login if Account Already Existed
 CREATING AN ACCOUNT
 - Collect User's Full name, Username and Password
3. Prompt The User to LOGIN if Account is Created Successfully or EXIT he dont want to proceed
4. Compare the User's Logging Detail with the User's details used in creating an account
  * If the login details match with the details used in creating the account, User is logged in
  * if the login details did not match with the details the user used in creating the account, the user is prompt to renter the logging details or EXIT
5. After logged in Sucessfully, The user is prompt to Upload a Timeline or Post or LOGOUT
  * if User uploaded TIMELINE first, He will be prompt whether he will like to upload his POST too or not
   *if yes(Then He will Upload his Post and also he will be prompt whether to see his feeds(containing his TIMELINE and POST))
    * IF yes it will Appear. Then He will be prompt to Logout
  *if User uploaded POST first, He will be prompt whether he will like to upload his TIMELINE too or not
   *if yes(Then He will Upload his TIMELINE and also he will be prompt whether to see his feeds(containing his TIMELINE and POST))
    * IF yes it will Appear. Then He will be prompt to Logout
  *if User selects LOGOUT, he will be asked to confirm his Logout and he will be logged out sucessfully
  * but if he change his mind and select NO, he will be redirected to his feeds where he will like to Upload his TIMELINE or POST.
6. THANKYOU
*/
import 'classForLogins.dart';
import 'dart:io';

void main() {
  print('************************************************************');
  print('***********A PROGRAM - Matthew Miracle Chinedum*************');
  print('************************************************************');
  print('*****************WELCOME TO LEMONNTEC CHAT APP*****************\n');

  var login = new loginDetails();
  login.name();
  login.login();
}
