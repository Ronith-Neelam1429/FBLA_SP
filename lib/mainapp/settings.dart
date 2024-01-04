import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fbla_sp/aspects/achieve.dart';
import 'package:fbla_sp/aspects/classes.dart';
import 'package:fbla_sp/aspects/sports.dart';
import 'package:fbla_sp/mainapp/account.dart';
import 'package:fbla_sp/mainapp/portfolio.dart';
import 'package:fbla_sp/mainapp/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const SettingsPage());
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: 1000, // Set a fixed height or adjust as needed
            child: Stack(
              children: [
                Container(
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
                  top: 70,
                  left: 20,
                  child: Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                const Positioned(
                  top: 180,
                  left: 0,
                  height: 1100,
                  width: 500,
                  child: ContainerBackground(),
                ),
                const Positioned(
                  top: 220,
                  left: 25,
                  height: 100,
                  width: 370,
                  child: AccountTab(),
                ),
                const Positioned(
                  top: 350,
                  left: 25,
                  height: 100,
                  width: 120,
                  child: AccountPassword(),
                ),
                const Positioned(
                  top: 350,
                  left: 175,
                  height: 100,
                  width: 220,
                  child: Notifications(),
                ),
                const Positioned(
                  top: 480,
                  left: 25,
                  height: 100,
                  width: 220,
                  child: Privacy(),
                ),
                const Positioned(
                  top: 480,
                  left: 275,
                  height: 100,
                  width: 120,
                  child: TermsOfService(),
                ),
                const Positioned(
                  top: 610,
                  left: 25,
                  height: 100,
                  width: 120,
                  child: Theme(),
                ),
                const Positioned(
                  top: 610,
                  left: 175,
                  height: 100,
                  width: 220,
                  child: Feedback(),
                ),
                const Positioned(
                  top: 740,
                  left: 95,
                  height: 70,
                  width: 220,
                  child: LogOut(),
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

class ContainerBackground extends StatelessWidget {
  const ContainerBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 243, 243, 243),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
        ),
      ),
    );
  }
}

class AccountTab extends StatelessWidget {
  const AccountTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 134, 51, 51),
                Color.fromARGB(255, 148, 47, 47),
              ],
            ),
          ),
        ),
        // Add other widgets or elements within the AccountTab as needed
        // Example:
        const Positioned(
          top: 20,
          left: 110,
          child: Text(
            'Ronith Neelam',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 226, 226, 226),
            ),
          ),
        ),
        const Positioned(
          top: 45,
          left: 110,
          child: Text(
            'ronithneelam1429@gmail.com',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 223, 223, 223),
            ),
          ),
        ),
        Positioned(
          top: 15,
          left: 20,
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(90)),
          ),
        )
      ],
    );
  }
}

class AccountPassword extends StatelessWidget {
  const AccountPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 151, 61, 55),
            Color.fromARGB(255, 161, 133, 92),
          ],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.person,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(height: 8),
          Text(
            'Account ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 92, 161, 152),
            Color.fromARGB(255, 55, 151, 98),
          ],
        ),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.notifications,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(height: 8),
          Text(
            'Notifications ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class Privacy extends StatelessWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 96, 92, 161),
            Color.fromARGB(255, 55, 61, 151),
          ],
        ),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lock,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(height: 8),
          Text(
            'Privacy & security ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class TermsOfService extends StatelessWidget {
  const TermsOfService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 54, 128, 54),
            Color.fromARGB(255, 92, 161, 95),
          ],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.description,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(height: 8),
          Text(
            'Terms of Service ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class Theme extends StatelessWidget {
  const Theme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 161, 148, 92),
            Color.fromARGB(255, 188, 190, 44),
          ],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.sunny,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(height: 8),
          Text(
            'Themes ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class Feedback extends StatelessWidget {
  const Feedback({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 99, 23, 134),
            Color.fromARGB(255, 149, 101, 163),
          ],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.tag_faces,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(height: 8),
          Text(
            'Feedback ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class LogOut extends StatelessWidget {
  const LogOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 90,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 134, 23, 23),
            Color.fromARGB(255, 163, 101, 101),
          ],
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 8),
          Text(
            'logout ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
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
