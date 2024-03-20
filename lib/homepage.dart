import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:theft_detection_app/addimage.dart';
import 'package:theft_detection_app/startingpage.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  File? selectimage;
  Future imagpicker() async {
    // ignore: unused_local_variable
    final imag = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      selectimage = File(imag!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 71, 71, 71),
      appBar: AppBar(
        title: const Text("Home Security\nSystem",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 71, 71, 71),
      ),
      body: Column(
        children: [
          Container(
            height: 260,
            child: const Column(
              children: [
                Center(
                  child: Image(
                      image: AssetImage('assests/images/shield.png' as String),
                      height: 220),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 160,
                    color: Color.fromARGB(255, 46, 46, 46),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Image(
                            image: AssetImage(
                                'assests/images/images.png' as String),
                            height: 60,
                          ),
                        ),
                        Text("Known image",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  )),
              Container(
                width: 160,
                color: Color.fromARGB(255, 46, 46, 46),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return (addimage());
                          }));
                        },
                        child: MaterialButton(
                          onPressed: () {
                            imagpicker();
                          },
                          child: const Image(
                            image: AssetImage(
                                'assests/images/addimage.png' as String),
                            height: 60,
                          ),
                        ),
                      ),
                    ),
                    Text("Add images", style: TextStyle(color: Colors.white))
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 160,
                    color: Color.fromARGB(255, 46, 46, 46),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Image(
                            image: AssetImage(
                                'assests/images/phonecall.png' as String),
                            height: 60,
                          ),
                        ),
                        Text("Contact", style: TextStyle(color: Colors.white))
                      ],
                    ),
                  )),
              Container(
                width: 160,
                color: Color.fromARGB(255, 46, 46, 46),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return startpage();
                          }));
                        },
                        child: Image(
                          image: AssetImage(
                              'assests/images/activate.png' as String),
                          height: 60,
                        ),
                      ),
                    ),
                    Text("Deactivate", style: TextStyle(color: Colors.white))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
