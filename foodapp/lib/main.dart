lutter clean
import 'package:flutter/material.dart';
import 'package:foodapp/models/user.dart';
import 'package:foodapp/screens/wrapper.dart';
import 'package:foodapp/services/auth.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}