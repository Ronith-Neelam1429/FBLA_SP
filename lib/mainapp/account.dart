import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fbla_sp/MyPortfolio.dart';
import 'package:fbla_sp/aspects/achieve.dart';
import 'package:fbla_sp/aspects/classes.dart';
import 'package:fbla_sp/aspects/sports.dart';
import 'package:fbla_sp/mainapp/portfolio.dart';
import 'package:fbla_sp/mainapp/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Accountpage());
}

class Accountpage extends StatelessWidget {
  const Accountpage({Key? key}) : super(key: key);

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
                  top: 230,
                  left: 30,
                  child: Search(),
                ),
                const Positioned(
                  top: 320,
                  left: 30,
                  child: HomeTools(),
                ),
                const Positioned(
                  top: 420,
                  left: 30,
                  child: HomeTools2(),
                ),
                const Positioned(
                  top: 370,
                  left: 30,
                  child: HomeToolsDes(),
                ),
                const Positioned(
                  top: 470,
                  left: 30,
                  child: HomeToolsDes2(),
                ),
                const Positioned(
                  top: 540,
                  left: 30,
                  child: MyPort(),
                ),
                const Positioned(
                  top: 700,
                  left: 30,
                  child: Description(),
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
          height: 300,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 7, 6, 80),
                Color.fromARGB(255, 19, 70, 165),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 170,
          left: 33,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Text(
              'Portfolio',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 70,
          left: 10,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Text(
              'Welcome,\nRonith Neelam',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          left: 10,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Text(
              'NCHS | 10th ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 168,
          left: -450,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Icon(
              Icons.school,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: 160,
          left: 0,
          right: -250,
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Icon(
              Icons.settings,
              size: 34,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        Positioned(
          bottom: 160,
          left: 0,
          right: -150,
          child: Container(
            padding: const EdgeInsets.all(8),
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            100), // Set the radius you desire here
                      ),
                      backgroundColor: const Color.fromARGB(255, 7, 6, 80),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 7, 6, 80),
                              Color.fromARGB(255, 19, 70, 165),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const NotificationCard(),
                      ),
                    );
                  },
                );
              },
              child: const Icon(
                Icons.notifications,
                size: 34,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Search extends StatelessWidget {
  const Search({Key? key});

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
          child: const Padding(
            padding: EdgeInsets.only(top: 15, left: 12),
            child: Text(
              "Search",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
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

class HomeTools extends StatelessWidget {
  const HomeTools({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 50),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Class1()),
              );
            },
            child: const Icon(
              Icons.assignment,
              size: 50,
              color: Color.fromARGB(255, 185, 78, 78),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 50),
          width: 50,
          height: 50,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Achieve()),
              );
            },
            child: const Icon(
              Icons.emoji_events,
              size: 50,
              color: Color.fromARGB(255, 185, 78, 78),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 50),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Sports()),
              );
            },
            child: const Icon(
              Icons.sports_football,
              size: 50,
              color: Color.fromARGB(255, 185, 78, 78),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 50),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Sports()),
              );
            },
            child: const Icon(
              Icons.brush,
              size: 50,
              color: Color.fromARGB(255, 185, 78, 78),
            ),
          ),
        ),
      ],
    );
  }
}

class HomeTools2 extends StatelessWidget {
  const HomeTools2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 50),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Sports()),
              );
            },
            child: const Icon(
              Icons.schedule,
              size: 50,
              color: Color.fromARGB(255, 185, 78, 78),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 50),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Sports()),
              );
            },
            child: const Icon(
              Icons.business,
              size: 50,
              color: Color.fromARGB(255, 185, 78, 78),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 50),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Sports()),
              );
            },
            child: const Icon(
              Icons.cases_outlined,
              size: 50,
              color: Color.fromARGB(255, 185, 78, 78),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 50),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Sports()),
              );
            },
            child: const Icon(
              Icons.photo,
              size: 50,
              color: Color.fromARGB(255, 185, 78, 78),
            ),
          ),
        ),
      ],
    );
  }
}

class HomeToolsDes extends StatelessWidget {
  const HomeToolsDes({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Classes",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Container(
          margin: const EdgeInsets.only(left: 35),
          child: const Text(
            'Achievments',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 34),
          child: const Text(
            'Sports',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: const Text(
            'Performing arts',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class HomeToolsDes2 extends StatelessWidget {
  const HomeToolsDes2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Community\nService",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Container(
          margin: const EdgeInsets.only(left: 35),
          child: const Text(
            'Clubs',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 58),
          child: const Text(
            'Sports',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 60),
          child: const Text(
            'Photos',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class MyPort extends StatelessWidget {
  const MyPort({Key? key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyPortfolio(),
              ),
            );
          },
          child: Container(
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
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 18,
          top: 12,
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const AlertDialog(
                    content: MyPortfolio(),
                  );
                },
              );
            },
            child: const Icon(
              Icons.school,
              size: 30,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 60, left: 20),
          child: Text(
            "Create or adjust your amazing\nhigh school portfolio",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

class Description extends StatelessWidget {
  const Description({Key? key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 0, top: 0),
          child: const Text(
            "About me",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 10, bottom: 250),
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 300,
              maxHeight: 600, // Set the maximum width as needed
            ),
            child: const Text(
              """Welcome to my porfolio page. My name is Ronith Neelam I am currently a 10th grader and North Creek High School. I have various achievments and interests ranging from many things. I hope you get to understand a little bit more about who I am . """,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
              softWrap: true, // Allow text to wrap onto the next line
              maxLines: 100, // Set the maximum number of lines
              overflow: TextOverflow.ellipsis, // Handle overflow
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 300, top: 0),
          child: const Text(
            "Edit",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 219, 126, 119)),
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
  final List<Widget> _pages = [
    const Accountpage(),
    const Port(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    BorderRadius.circular(30);
    return CurvedNavigationBar(
      height: 50,
      buttonBackgroundColor: const Color.fromARGB(255, 189, 87, 87),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      color: const Color.fromARGB(255, 17, 61, 143),
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
            MaterialPageRoute(builder: (context) => const SettingsPage()),
          );
        }
        if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Port()),
          );
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Accountpage()),
            );
          }
          setState(() {});
        }
      },
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 400,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 7, 6, 80),
            Color.fromARGB(255, 19, 70, 165),
          ],
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            height: 450,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Notifications",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                // Container underneath Notifications
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Color.fromARGB(
                        255, 185, 78, 78), // Customize the color as needed
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceEvenly, // Adjust the icon position
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 0),
                      Text(
                        "Abhiram Somisetty accepted\nyour friend request",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                // Your existing content goes here
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
