import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
                    Color.fromARGB(255, 39, 109, 82),
                    Color.fromARGB(255, 0, 0, 0),
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
            const Positioned(
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

class SignUP extends StatelessWidget {
  const SignUP({Key? key}) : super(key: key);

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
                  padding: const EdgeInsets.all(10),
                  width: 290,
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Email ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
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
                  padding: const EdgeInsets.all(10),
                  width: 290,
                  alignment: Alignment.centerLeft,
                  child: const Row(
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 230,
            left: 200,
            child: Text(
              'forgot password?',
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
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 58, 193, 142),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(5),
                  width: 290,
                  alignment: Alignment.center,
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 255, 255, 255),
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
        ],
      ),
    );
  }
}
