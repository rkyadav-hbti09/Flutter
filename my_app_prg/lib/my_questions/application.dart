import 'package:flutter/material.dart';
import 'poni.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Poni",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Are you ready to die ?",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Image.asset(
                'assets/images/poni.jpg',
                height: 400,
                width: 400,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Poni(
                                title: 'Dangerous Question App',
                              )),
                    );
                  },
                  child: Text("Ready ?"))
            ],
          ),
        ));
    ;
  }
}
