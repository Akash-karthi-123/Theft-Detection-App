import 'package:flutter/material.dart';

class addimage extends StatelessWidget {
  const addimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: MaterialButton(
                  onPressed: () {},
                  child: const Image(
                    image:
                        AssetImage('assests/images/insert-image.png' as String),
                    height: 120,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
