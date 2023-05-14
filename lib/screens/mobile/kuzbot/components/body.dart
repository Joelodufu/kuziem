import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 238, 238, 238)),
          child: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Center(
                child: Image(
              image: AssetImage("assets/images/KuzBOT.png"),
            )),
          ),
        ),
        
      ],
    );
  }
}
