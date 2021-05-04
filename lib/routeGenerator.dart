import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigationtuts/main.dart';
import 'package:navigationtuts/secondPage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //get arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MyHomePage());
      case '/secondPage':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => SecondPage(data: args));
        }

        // if args is not of the correct type, return an error page.
        // you can throw an exception while in development
        return _errorRoute();
      default:
        //if there's no such page or route in the switch statement throw this error
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text("Error"),
        ),
      );
    });
  }
}
