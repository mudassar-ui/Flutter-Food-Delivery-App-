import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:food_delivery_app/screens/Home/home_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Future<User?> _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      //final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount googleUser =
          await _googleSignIn.signIn() as GoogleSignInAccount;
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final User? user =
          (await FirebaseAuth.instance.signInWithCredential(credential)).user;
      //print("sign in" + user.displayName);
      print(user);
      return user;
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/background.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              //color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('sign in to continue'),
                  Text(
                    'Vegi',
                    style:
                        TextStyle(fontSize: 50, color: Colors.white, shadows: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.green.shade900,
                        offset: Offset(3, 3),
                      ),
                    ]),
                  ),

// with custom text
                  Column(
                    children: [
                      SignInButton(
                        Buttons.Apple,
                        text: "Sign in with Apple",
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SignInButton(
                        Buttons.Google,
                        text: "Sign in with Google",
                        onPressed: () {
                          _googleSignUp().then(
                            (value) => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Text(
                        'By signing in you are agreeing to our',
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                      Text(
                        'Terms and Privacy Policy',
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
