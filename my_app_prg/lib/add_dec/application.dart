import 'package:flutter/material.dart';

class Application extends StatefulWidget {
  @override
  createState() {
    return _ApplicationState();
  }
}

class _ApplicationState extends State<Application> {
  int _conter = 1;

  void _increament() {
    print("couter=$_conter");
    setState(() {
      ++_conter;
    });
  }

  void _decreament() {
    print("couter=$_conter");
    setState(() {
      --_conter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Application"),
      ),
      body: Center(
        child: Text("You Presed the busston at $_conter times"),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            tooltip: 'Add',
            child: Icon(Icons.add),
            onPressed: _increament,
          ),
          FloatingActionButton(
            tooltip: 'Dec',
            child: Icon(Icons.add_a_photo),
            onPressed: _decreament,
          ),
        ],
      ),
    );
  }
}
