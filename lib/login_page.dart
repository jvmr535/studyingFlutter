import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
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
                    child: Image.asset('assets/images/logo.jpg'),
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(color: Colors.black.withOpacity(0.3)),
          _body(context),
        ],
      ),
    );
  }
}
