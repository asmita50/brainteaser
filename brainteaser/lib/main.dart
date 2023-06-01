
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'authentication/screen/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  runApp(
    const MaterialApp(
      home: Loginscreen(),
    ),
  );
}
