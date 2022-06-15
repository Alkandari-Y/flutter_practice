import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('Home'), 
          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/auth/login');
              //link to flutter docs
              //https://api.flutter.dev/flutter/widgets/Navigator/pushNamed.html
            }, 
            child: Text('Login')
          )
        ],
      ),
    );
  }
}
