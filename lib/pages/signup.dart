import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebasecrudbyaqib/pages/signin.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {


  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passController = TextEditingController();
  final usernameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp Page'),
      ),

      body: Form(
        key: _formKey,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[


                // Container(
                //   margin: EdgeInsets.symmetric(vertical: 10.0),
                //   child: TextFormField(
                //     autofocus: false,
                //     decoration: InputDecoration(
                //       labelText: 'UserName: ',
                //       labelStyle: TextStyle(fontSize: 20.0),
                //       border: OutlineInputBorder(),
                //       errorStyle:
                //       TextStyle(color: Colors.redAccent, fontSize: 15),
                //     ),
                //     controller: usernameController,
                //     validator: (value) {
                //       if (value == null || value.isEmpty) {
                //         return 'Please Enter UserName';
                //       } else if (!value.contains('@')) {
                //         return 'Please Enter Valid UserName';
                //       }
                //       return null;
                //     },
                //   ),
                // ),


                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: TextFormField(
                    autofocus: false,
                    decoration: InputDecoration(
                      labelText: 'Email: ',
                      labelStyle: TextStyle(fontSize: 20.0),
                      border: OutlineInputBorder(),
                      errorStyle:
                      TextStyle(color: Colors.redAccent, fontSize: 15),
                    ),
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Email';
                      } else if (!value.contains('@')) {
                        return 'Please Enter Valid Email';
                      }
                      return null;
                    },
                  ),
                ),


                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: TextFormField(
                    autofocus: false,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password: ',
                      labelStyle: TextStyle(fontSize: 20.0),
                      border: OutlineInputBorder(),
                      errorStyle:
                      TextStyle(color: Colors.redAccent, fontSize: 15),
                    ),
                    controller: passController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Password';
                      }
                      return null;
                    },
                  ),
                ),


                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      _registraterUser();
                      clearText();


                      Route route = MaterialPageRoute(builder: (_)=> SignIn());
                      Navigator.push(context, route);
                    },
                    child: Text('SignIn'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  FirebaseAuth _auth = FirebaseAuth.instance;

  void _registraterUser() async {
    await _auth.createUserWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passController.text.trim(),
    );
  }

  clearText() {
    passController.clear();
    emailController.clear();
  }
}