import 'package:firebasecrudbyaqib/pages/signin.dart';
import 'package:firebasecrudbyaqib/pages/signup.dart';
import 'package:flutter/material.dart';




class Welcomehome extends StatefulWidget {
  const Welcomehome({Key key}) : super(key: key);

  @override
  _WelcomehomeState createState() => _WelcomehomeState();
}

class _WelcomehomeState extends State<Welcomehome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curd Operation by Aqib'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[



          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Center(child: Text('Welcome Home')),
                decoration: BoxDecoration(
                  color: Colors.amber[100],

                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),


          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: (){

                    Route route = MaterialPageRoute(builder: (_)=> SignUp());
                    Navigator.push(context, route);

                  },
                    child: Text('SignUp'),),
              ),
            ),
          ),

          SizedBox(
            height: 10.0,
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: (){


                    Route route = MaterialPageRoute(builder: (_)=> SignIn());
                    Navigator.push(context, route);
                  },
                  child: Text('SignIn'),),
              ),
            ),
          ),



        ],
      ),



    );
  }
}
