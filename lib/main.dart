import 'package:flutter/material.dart';
import 'package:meet/services/auth.dart';
import 'package:meet/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:meet/models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
