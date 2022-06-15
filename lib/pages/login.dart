import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('Login'),
          ElevatedButton(
            onPressed: () {},
            child: Text('Login'),
          ),
          InkWell(
              onTap: () {
                Navigator.popAndPushNamed(context, '/auth/signup');
                //link to flutter docs
                //https://api.flutter.dev/flutter/widgets/Navigator/replace.html
              },
              child: Text('Need an account'))
        ],
      ),
    );
  }
}
