import 'package:flutter/material.dart';

void main() {
  runApp(const Class1());
}

class Class1 extends StatelessWidget {
  const Class1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
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
                const Positioned(
                  top: 200,
                  left: 10,
                  child: TabView(),
                )
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
                Color.fromARGB(255, 7, 6, 80),
                Color.fromARGB(255, 19, 70, 165),
              ],
            ),
          ),
        ),
        const Positioned(
          top: 100,
          left: 10,
          child: Text(
            "Classes",
            style: TextStyle(fontSize: 35, color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, // Adjust the height as needed
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(4, (index) {
            return buildTabItem("Grade ${index + 9}", index);
          }),
        ),
      ),
    );
  }

  Widget buildTabItem(String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: _selectedIndex == index
                    ? const Color.fromARGB(255, 201, 67, 67) // Selected color
                    : Colors.transparent, // Unselected color
                width: 2.0, // Underline thickness
              ),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight:
                  _selectedIndex == index ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}

class ClassesBox extends StatelessWidget {
  const ClassesBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
    );
  }
}
