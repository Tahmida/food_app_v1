import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_app_v1/screens/home_screen/home_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);
  Future LogIn() async{
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    UserCredential  result = await FirebaseAuth.instance.signInWithCredential(credential);
    return result;
    // User? user = result.user;
    // if(user !=null){
    //  // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    // }
    // try{

    //   final GoogleSignIn _googleSignIn = GoogleSignIn(
    //       scopes: [
    //         'email'
    //       ]
    //   );
    //   final FirebaseAuth _auth = FirebaseAuth.instance;
    //   final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    //   final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    //   final AuthCredential credential = GoogleAuthProvider.credential(
    //     accessToken: googleAuth.accessToken,
    //     idToken: googleAuth.idToken,
    //   );
    //
    //
    //   return await FirebaseAuth.instance.signInWithCredential(credential);
    //
    // }
    // catch(e){
    //
    // }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            RaisedButton(onPressed: (){
              LogIn().then((value) => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomeScreen(),),),);
            },
              child:Text('Sign UP'),
            )


          ],

        ),

      ),
    );
  }
}
