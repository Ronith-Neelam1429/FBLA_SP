import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
            child: const Icon(
              Icons.notifications,
              size: 34,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        Positioned(
          top: 110,
          left: 310,
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        )
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
          child: const Icon(
            Icons.assignment,
            size: 50,
            color: Color.fromARGB(255, 185, 78, 78),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 50),
          width: 50,
          height: 50,
          child: const Icon(
            Icons.emoji_events,
            size: 50,
            color: Color.fromARGB(255, 185, 78, 78),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 50),
          child: const Icon(
            Icons.sports_football,
            size: 50,
            color: Color.fromARGB(255, 185, 78, 78),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 50),
          child: const Icon(
            Icons.brush,
            size: 50,
            color: Color.fromARGB(255, 185, 78, 78),
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
          child: const Icon(
            Icons.schedule,
            size: 50,
            color: Color.fromARGB(255, 185, 78, 78),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 50),
          width: 50,
          height: 50,
          child: const Icon(
            Icons.business,
            size: 50,
            color: Color.fromARGB(255, 185, 78, 78),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 50),
          child: const Icon(
            Icons.cases_outlined,
            size: 50,
            color: Color.fromARGB(255, 185, 78, 78),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 50),
          child: const Icon(
            Icons.photo,
            size: 50,
            color: Color.fromARGB(255, 185, 78, 78),
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
              """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.Sed nisi.Nulla quis sem at nibh elementum imperdiet.Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta.Mauris massa. Vestibulum lacinia arcu eget nulla.Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero.Sed dignissim lacinia nunc. """,
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
