

import 'package:flutter/material.dart';
import 'package:theft_detection_app/homepage.dart';
import 'package:http/http.dart' as http;

class startpage extends StatefulWidget {
  const startpage({super.key});

  @override
  State<startpage> createState() => _startpageState();
}

class _startpageState extends State<startpage> {
// Example of making a GET request in Flutter using the http package
  
  Future<void> fetchData() async {
    try {
      final client = http.Client();

      final response = await http.get(Uri.parse("http://10.0.2.2:3000/data"));

      if (response.statusCode == 200) {
        print("hi");
      } else {
        print("hello");
        // Error handling
      }
    } catch (err) {
      print(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 39, 65),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Welcome to home security app",
              style: TextStyle(fontSize: 28, color: Colors.white)),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.white),
              children: [
                TextSpan(
                  text: 'To activate the system press ',
                  style: TextStyle(fontSize: 20),
                ),
                TextSpan(
                  text: 'below ',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 20), //<-- SEE HERE
                ),
                TextSpan(
                  text: 'button',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: GestureDetector(
            onTap: () {
              print("hi");
              fetchData();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return homepage();
              }));
            },
            child: Image(
                image: AssetImage('assests/images/activate.png' as String)),
          ))
        ],
      ),
    );
  }
}
