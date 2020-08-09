import 'package:flutter/material.dart';
import 'package:meet/screens/home/home.dart';
import 'package:meet/screens/authenticate/authenticate.dart';
import 'package:provider/provider.dart';
import 'package:meet/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
