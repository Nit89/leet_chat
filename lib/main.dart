import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leet_chat/helper/authenticate.dart';
// ignore: unused_import
import 'package:leet_chat/views/ChatRoom.dart';

// ignore: unused_import
import 'package:leet_chat/views/SignIn.dart';

// ignore: unused_import
import 'package:leet_chat/views/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.redAccent[400],
          accentColor: Color(0xFFFEF9EB),
          textTheme: GoogleFonts.rubikTextTheme()),
      home: Authenticate(),
    );
  }
}
