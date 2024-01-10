import 'package:flutter/material.dart';
import 'package:flutter_crs/student/student-homepage.dart';

import 'faculty/faculty-homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  static const darkMaroon = Color(0xFF8B0000);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 150.0, bottom: 10.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.network(
                        'https://plm.edu.ph/images/Seal/PLM_Seal_BOR-approved_2014.png')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter your PLM account'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter your password'),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: darkMaroon, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                  String username = emailController.text.toLowerCase();
                  String password = passwordController.text;

                  // Simple authentication logic
                  if (username == 'staff' && password == 'admin') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FacultyPage()),
                    );
                  } else if (username == 'jpdelacruz@plm.edu.ph' &&
                      password == 'student') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StudentPage()),
                    );
                  } else {
                    // Handle incorrect credentials
                    // For simplicity, showing a snackbar here
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Incorrect username or password'),
                      ),
                    );
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(darkMaroon),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
          ],
        ),
      ),
    );
  }
}
