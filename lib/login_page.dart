import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 200,
                  child: Image.network(
                      'https://static.wikia.nocookie.net/baixa-qualidade/images/f/fb/Choris.png/revision/latest/scale-to-width-down/247?cb=20180630014909&path-prefix=pt-br'),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    email = text;
                  },
                ),
                Container(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    password = text;
                  },
                ),
                Container(
                  height: 20,
                ),
                RaisedButton(
                  onPressed: () {
                    if (email == 'jvmr535@gmail.com' &&
                        password == 'joao1234') {
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      print('errado');
                    }
                  },
                  child: Text('Entrar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
