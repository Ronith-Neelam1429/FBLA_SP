import 'package:flutter/material.dart';

void main() {
  runApp(const Sports());
}

class Sports extends StatelessWidget {
  const Sports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: 1300, // Set a fixed height or adjust as needed
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                const Positioned(
                  top: 0,
                  left: 0,
                  height: 250,
                  width: 500,
                  child: HomeMain(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeMain extends StatelessWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 500,
          height: 200,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 232, 232, 236),
                Color.fromARGB(255, 163, 163, 163),
              ],
            ),
          ),
        ),
        const Positioned(
          top: 100,
          left: 100,
          child: Text(
            "TopG",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ],
    );
  }
}
