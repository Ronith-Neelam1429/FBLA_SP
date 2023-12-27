import 'package:fbla_sp/login/intro/login.dart';
import 'package:fbla_sp/signup/signup3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const sign2());
}

class sign2 extends StatelessWidget {
  const sign2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 7, 6, 80),
                    Color.fromARGB(255, 19, 70, 165),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            const Positioned(
              top: 85,
              left: 60,
              child: Text(
                'Back ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 200.0,
              bottom: 30,
              width: 370,
              child: SignUP2(),
            ),
            Positioned(
              top: 75,
              left: 10,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                  size: 37,
                ),
                onPressed: () {
                  // Handle back button press
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SignUP2 extends StatelessWidget {
  SignUP2({Key? key}) : super(key: key);
  TextEditingController myControllerSignInCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(255, 249, 251, 252),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 10,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      width: 320,
      height: 700,
      child: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 40,
            left: 20,
            child: Text(
              'Did someone forget their password?\n                      Don\'t worry!\nPlease enter your email address so\nwe can send you a password reset link!',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            top: 189,
            left: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  width: 290,
                  alignment: Alignment.centerLeft,
                  child: TextField(
                    controller: myControllerSignInCon,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    decoration: const InputDecoration(
                      hintText: "Email address",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 310,
            left: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 290,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 185, 78, 78),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Sign3()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(290, 50),
                      foregroundColor: Colors.transparent,
                      backgroundColor:
                          Colors.transparent, // Transparent text color
                      elevation: 0, // No shadow
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 250,
            left: 45,
            child: RichText(
              text: const TextSpan(
                text: 'Didn\'t get the email? ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 228, 225, 225),
                  fontSize: 15,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Click here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
