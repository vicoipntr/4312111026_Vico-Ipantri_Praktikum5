// import 'package:flutter/material.dart';
// import 'ui_view/PageTwo.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
// // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//       routes: <String, WidgetBuilder>{
// '/page2' : (BuildContext context) => PageTwo(),
//       },
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Navigator"),
//         ),
//         body: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             MaterialButton(
//               color: Colors.yellow,
//               child: Text("Page 2"),
//               onPressed: () {
// // dibuat berikutnya
//                 Navigator.of(context).pushNamed('/page2');
//               },
//             ),
//           ],
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'ui_view/login.dart';
import 'ui_view/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Register',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.android,
              color: Colors.white,
              size: 45,
            ),
            SizedBox(
              height: 200,
            ),
            Text("Welcome to Flutter",
                style: TextStyle(color: Colors.white, fontSize: 22)),
            SizedBox(
              height: 10,
            ),
            Text("Get real-time updates about what",
                style: TextStyle(color: Colors.white, fontSize: 18)),
            Text("maters to you",
                style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              minWidth: 210,
              color: Colors.white,
              textColor: Colors.lightBlue,
              child: Text(
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
            ),
            TextButton(
              child: Text(
                "Log in",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
            )
          ],
        ),
      ),
    );
  }
}