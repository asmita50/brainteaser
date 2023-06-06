import 'package:brainteaser/authentication/screen/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // check the difference betwenn future builder and stream builder
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final user = snapshot.data;

          // emsa maile data leko hai edi data xaena vhani login screen eedi login vhayo vhani home screen
          if (user == null) {
            return Loginscreen();
          } else {
            return Scaffold(
              appBar: AppBar(
                actions: [
                  // esma logout ko rakh dinxu ani hera la
                  // edi codee le logout hunxa 
                  IconButton(
                    onPressed: () => FirebaseAuth.instance.signOut(),
                    icon: Icon(Icons.logout),
                  ),
                ],
              ),
              body: Text('Welcome to Home Page'),
            );
          }
        }
        return Text('${snapshot.error}');
      },
    );
  }
}
