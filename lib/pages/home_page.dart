import 'package:firebasecrudbyaqib/pages/add_student_page.dart';
import 'package:firebasecrudbyaqib/pages/list_student_page.dart';
import 'package:firebasecrudbyaqib/pages/signin.dart';
import 'package:firebasecrudbyaqib/pages/signup.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Flutter FireStore CRUD'),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddStudentPage(),
                  ),
                )
              },
              child: Text('Add', style: TextStyle(fontSize: 20.0)),
              style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
            )
          ],
        ),
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[

            UserAccountsDrawerHeader(
                accountName: Text('Aqib Nawaz'),
                accountEmail: Text('aqibnawaz015@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://bit.ly/399BHti'),
              ),
            ),

            ListTile(
              leading: Icon(Icons.create_new_folder),
              title: Text('Sign Up'),
              onTap: (){


                Route route = MaterialPageRoute(builder: (_)=> SignUp());
                Navigator.push(context, route);


              },
            ),

            ListTile(
              leading: Icon(Icons.login),
              title: Text('Sign In'),

              onTap: (){

                Route route = MaterialPageRoute(builder: (_)=> SignIn());
                Navigator.push(context, route);

              },
            ),

            Divider(
              color: Colors.amber,

            ),

            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Signout'),
            ),
          ],
        ),


      ),

      body: ListStudentPage(),
    );
  }
}
