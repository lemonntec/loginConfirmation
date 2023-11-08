import 'dart:io';

class loginDetails {
  var Fullname, Username, password;
  String? timeline, post;

  name() {
    print('');
    print(
        'CREATE ACCOUNT----------------------------------LOGIN\n (input create account to create an account Login if already have an account)');
    var input_ = stdin.readLineSync();
    if (input_ == 'CREATE ACCOUNT' || input_ == 'create account') {
      print('');
      print('***PLease Enter your Full Name***');
      Fullname = stdin.readLineSync();
      print('');
      print('***Enter a Username***');
      Username = stdin.readLineSync();
      print('');
      print('***Enter a Password***');
      password = stdin.readLineSync();
      print('');
      print('CONGRATULATIONS. Your account is created Successfully\n');
    } else if (input_ == 'LOGIN' || input_ == 'login') {
      login();
    } else {
      print('invalid input');
      name();
    }
  }

  login() {
    //Login Details

    print(
        'Please You can Proceed to Login (input LOGIN to login or EXIT to close)');
    print('LOGIN------------------------------EXIT\n');

    var loginOption = stdin.readLineSync();
    print('');

    if (loginOption == 'LOGIN' || loginOption == 'login') {
      print('***Please Enter your Username***');
      var loginUsername = stdin.readLineSync();
      print('');
      print('***Please Enter your Password***');
      var loginPassword = stdin.readLineSync();
      print('');

      if (loginUsername == Username && loginPassword == password) {
        print('LOGGED IN SUCCESSFULLY\n');
        feeds();
        // logout();
      } else {
        print('INCORRECT CREDENTIALS\n');
        login();
      }
    } else if (loginOption == 'EXIT' || loginOption == 'exit') {
      print('Thanks Friend. See you next time');
    } else {
      print('Oops! Invalid Input. Please input a valid input\n');
      login();
    }
  }

//To Write a Post or Timeline
  feeds() {
    print('Input Timeline(to Upload your timeline)\npost(to write a post)\n');
    print(
        'TIMELINE----------------------------------POST\n (LOGOUT to logout from your account)');
    var feed = stdin.readLineSync();
    print(''); //space

    if (feed == 'TIMELINE' || feed == 'timeline') {
      timeline = stdin.readLineSync();
      print('TIMELINE: $timeline\n');
      post_();
      print(''); //space
      seefeeds();
      print('');
    } else if (feed == 'POST' || feed == 'post') {
      post = stdin.readLineSync();
      print('POST: $post\n');
      timeline_();
      seefeeds();
      print(''); //space
    } else if (feed == 'LOGOUT' || feed == 'logout') {
      logout();
    } else {
      print('invalid input');
      feeds();
    }
  }

//logout Function
  logout() {
    print('Do you wish to Logout (yes/no)');
    var logout_ = stdin.readLineSync();
    if (logout_ == 'YES' || logout_ == 'yes') {
      print('--------------LOGGED OUT SUCCESSFULLY------------------');
      print('********************************************************');
      print('********************************************************');
    } else if (logout_ == 'NO' || logout_ == 'no') {
      print('$Fullname account');
      seefeeds();
    } else {
      print('invalid input');
      logout();
    }
  }

//prompt to Upload post after Uploading the Timeline
  timeline_() {
    print('DO you want to upload your timeline(yes/no)');
    var anwser = stdin.readLineSync();
    if (anwser == 'yes' || anwser == 'YES') {
      timeline = stdin.readLineSync();
      print('TIMELINE: $timeline');
    } else if (anwser == 'no' || anwser == 'NO') {
      print('THANKYOU');
      feeds();
    } else {
      print('invalid input');
      timeline_();
    }
  }

//prompt to Upload post after Uploading the Timeline
  post_() {
    print('DO you want to upload your post(yes/no)');
    var anwser = stdin.readLineSync();
    if (anwser == 'yes' || anwser == 'YES') {
      post = stdin.readLineSync();
      print('POST: $post');
    } else if (anwser == 'no' || anwser == 'NO') {
      print('THANKYOU');
      feeds();
    } else {
      print('invalid input');
      post_();
    }
  }

//To See the Uploded Timeline and posts
  seefeeds() {
    print('Do you wish to See your Timeline and Post? (yes/no)\n');
    var seefeeds_ = stdin.readLineSync();
    print(''); //space

    if (seefeeds_ == 'yes') {
      print('TIMELINE: $timeline\n POST: $post');
      print(''); //space
      feeds();
    } else if (seefeeds_ == 'no') {
      print('PROCEED TO LOGOUT');
      print('');
      feeds();
    } else {
      print('invalid input');
      seefeeds();
    }
  }
}
