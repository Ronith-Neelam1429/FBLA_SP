import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fbla_sp/aspects/achieve.dart';
import 'package:fbla_sp/aspects/classes.dart';
import 'package:fbla_sp/aspects/sports.dart';
import 'package:fbla_sp/mainapp/account.dart';
import 'package:fbla_sp/mainapp/portfolio.dart';
import 'package:fbla_sp/mainapp/settings.dart';
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
        bottomNavigationBar: NavBar(),
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

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildTabItem("Portfolios", 0),
        buildTabItem("Friends", 1),
        buildTabItem("Search", 2),
      ],
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
        margin: const EdgeInsets.only(top: 28, right: 50),
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

// ignore: must_be_immutable
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

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Accountpage(),
    Port(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    BorderRadius.circular(30);
    return CurvedNavigationBar(
      height: 50,
      buttonBackgroundColor: const Color.fromARGB(255, 189, 87, 87),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      color: Color.fromARGB(255, 17, 61, 143),
      items: const <Widget>[
        Icon(
          Icons.person,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.home,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.settings,
          size: 30,
          color: Colors.white,
        ),
      ],
      onTap: (index) {
        if (index == 2) {
          // Navigate to the SettingsPage when the "Settings" icon is tapped
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SettingsPage()),
          );
        }
        if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Port()),
          );
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Accountpage()),
            );
          }
          setState(() {
            _selectedIndex = index;
          });
        }
      },
    );
  }
}
