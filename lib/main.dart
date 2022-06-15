import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //link to flutter docs
      //https://api.flutter.dev/flutter/widgets/Navigator-class.html
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
            '/': (BuildContext context) => const HomePage(),
            '/auth/login': (BuildContext context) => const Login(),
            '/auth/signup': (BuildContext context) => const SignUp(),
            // '/c': (BuildContext context) => MyPage(title: 'page C'),
          },
    );
  }
}
