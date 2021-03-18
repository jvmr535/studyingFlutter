import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TinderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            child: Image.asset('assets/images/tinder-logo.png'),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Location Changer',
            style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontFamily: 'RobotoMono'),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Plugin app for Tinder',
            style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                fontFamily: 'RobotoMono'),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 200,
            height: 50,
            child: RaisedButton(
              child: Text(
                'Login with Facebook',
                style: TextStyle(
                  color: Colors.deepOrange,
                ),
              ),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
