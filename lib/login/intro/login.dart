import 'package:fbla_sp/mainapp/account.dart';
import 'package:fbla_sp/signup/signup1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
              top: 90,
              left: 20,
              child: Text(
                'Welcome back!',
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
              child: SignUP(),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SignUP extends StatelessWidget {
  SignUP({Key? key}) : super(key: key);
  TextEditingController myControllerLoginEmail = TextEditingController();
  TextEditingController myControllerLoginPassword = TextEditingController();

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
      width: 30,
      height: 700,
      child: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 234, 239, 238),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(6),
                  width: 290,
                  alignment: Alignment.centerLeft,
                  child: TextField(
                    controller: myControllerLoginEmail,
                    decoration: const InputDecoration(
                      hintText: "Email",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 170,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 234, 239, 238),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(6),
                  width: 290,
                  alignment: Alignment.centerLeft,
                  child: TextField(
                    controller: myControllerLoginPassword,
                    decoration: const InputDecoration(
                      hintText: "Password",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 230,
            left: 200,
            child: Text(
              'Forgot Password',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 24, 136, 211),
                fontSize: 15,
              ),
            ),
          ),
          Positioned(
            top: 260,
            left: 30,
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
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
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
          const Positioned(
            top: 330,
            left: 164,
            child: Text(
              'or',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 228, 225, 225),
                fontSize: 15,
              ),
            ),
          ),
          Positioned(
            top: 360,
            left: 64,
            child: Row(
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 238, 236, 236),
                    ),
                    child: Image.asset('assets/images/google.png'),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    child: Image.asset('assets/images/apple.png'),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 24, 68, 211),
                    ),
                    child: Image.asset('assets/images/facebook.png'),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 440,
            left: 30,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUP1()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 0),
                foregroundColor: Colors.transparent,
                backgroundColor: Colors.transparent, // Transparent text color
                elevation: 0, // No shadow
              ),
              child: RichText(
                text: const TextSpan(
                  text: 'Dont have an account? ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 228, 225, 225),
                    fontSize: 15,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign up',
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
          ),
        ],
      ),
    );
  }
}
