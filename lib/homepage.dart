import 'package:biometric/authenticate.dart';
import 'package:biometric/secondpage.dart';
import 'package:flutter/material.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF192359),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Login To The App",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              "Use fingerprint to log into the app",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 28,
            ),
            Divider(color: Colors.white60),
            SizedBox(
              height: 28,
            ),
            ElevatedButton.icon(
                onPressed: () async {
                  bool auth = await Authentication.authentication();
                  print("can authenticate : $auth");
                  if (auth) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondScreen()));
                  }
                },
                icon: Icon(Icons.fingerprint),
                label: Text("Authenticate"))
          ],
        ),
      )),
    );
  }
}
