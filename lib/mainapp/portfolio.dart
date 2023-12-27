import 'package:flutter/material.dart';

void main() {
  runApp(const Port());
}

class Port extends StatelessWidget {
  const Port({Key? key}) : super(key: key);

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
                const Positioned(
                  top: 0,
                  left: 20,
                  height: 250,
                  width: 500,
                  child: TabView(),
                ),
                Positioned(
                  top: 180,
                  left: 20,
                  height: 250,
                  width: 500,
                  child: Search(),
                ),
                const Positioned(
                  top: 260,
                  left: 20,
                  height: 250,
                  width: 500,
                  child: PeoplePort(),
                ),
                const Positioned(
                  top: 420,
                  left: 20,
                  height: 250,
                  width: 500,
                  child: PeoplePort(),
                ),
                const Positioned(
                  top: 580,
                  left: 20,
                  height: 250,
                  width: 500,
                  child: PeoplePort(),
                ),
                const Positioned(
                  top: 740,
                  left: 20,
                  height: 250,
                  width: 500,
                  child: PeoplePort(),
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
          height: 150,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 255, 255, 255),
              ],
            ),
          ),
        ),
        const Positioned(
          top: 55,
          left: 20,
          child: Text(
            "Portfolio",
            style: TextStyle(fontSize: 25),
          ),
        ),
        Positioned(
          bottom: 160,
          left: 0,
          right: -250,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Port()),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Icon(
                Icons.settings,
                size: 34,
                color: Color.fromARGB(255, 201, 67, 67),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 160,
          left: 0,
          right: -150,
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Icon(
              Icons.notifications,
              size: 34,
              color: Color.fromARGB(255, 201, 67, 67),
            ),
          ),
        ),
      ],
    );
  }
}

class TabView extends StatelessWidget {
  const TabView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 28, right: 10),
          child: const Text(
            "Portfolios",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 28, left: 50),
          child: const Text(
            "Friends",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 28, left: 60),
          child: const Text(
            "Search",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}

class Search extends StatelessWidget {
  Search({Key? key});
  TextEditingController searchBar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 350,
          height: 50,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 1, left: 12),
            child: TextField(
              controller: searchBar,
              decoration: const InputDecoration(
                hintText: "Search a portfolio",
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        Positioned(
          top: 7,
          left: 305,
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 185, 78, 78),
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Icon(
              Icons.search,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class PeoplePort extends StatelessWidget {
  const PeoplePort({Key? key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 350,
          height: 130,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 16, 60, 143),
                Color.fromARGB(255, 9, 1, 82),
              ],
            ),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: const Padding(
            padding: EdgeInsets.only(top: 20, left: 55),
            child: Text(
              "My Portfolio",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 18, top: 12),
          child: const Icon(
            Icons.school,
            size: 30,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 60, left: 20),
          child: Text(
            "Create or adjust your amazing\nhigh school portfolio",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
