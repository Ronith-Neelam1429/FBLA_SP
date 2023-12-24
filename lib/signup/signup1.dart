import 'package:fbla_sp/login/intro/login.dart';
import 'package:fbla_sp/signup/signup2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const SignUP1());
}

class SignUP1 extends StatelessWidget {
  const SignUP1({Key? key}) : super(key: key);

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
                    Color.fromARGB(255, 19, 70, 165),
                    Color.fromARGB(255, 7, 6, 56),
                  ],
                  stops: [0.20, 0.80],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            const Positioned(
              top: 90,
              left: 20,
              child: Text(
                'Welcome,\ncreate your account ',
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
  TextEditingController myControllerSignUpEmail = TextEditingController();
  TextEditingController myControllerSignUpPassword = TextEditingController();
  TextEditingController myControllerSignUpConfirmPassword =
      TextEditingController();

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
                  '1 out of 3',
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
                  padding: const EdgeInsets.all(5),
                  width: 290,
                  alignment: Alignment.centerLeft,
                  child: TextField(
                    controller: myControllerSignUpEmail,
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
                  padding: const EdgeInsets.all(5),
                  width: 290,
                  alignment: Alignment.centerLeft,
                  child: TextField(
                    controller: myControllerSignUpPassword,
                    decoration: const InputDecoration(
                      hintText: "Password",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 240,
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
                  padding: const EdgeInsets.all(5),
                  width: 290,
                  alignment: Alignment.centerLeft,
                  child: TextField(
                    controller: myControllerSignUpConfirmPassword,
                    decoration: const InputDecoration(
                      hintText: "Confirm Password",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 310,
            left: 60,
            child: RichText(
              text: const TextSpan(
                text: 'By selecting Agree and continue below,\nI agree to ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 228, 225, 225),
                  fontSize: 12,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Terms of Service and Privacy Policy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 350,
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
                        MaterialPageRoute(builder: (context) => const sign2()),
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
            top: 420,
            left: 160,
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
            top: 450,
            left: 60,
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
            top: 310,
            left: 33,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                  height: 20,
                  child: Checkbox(
                    value: false, // You can set the initial value here
                    onChanged: (bool? value) {},
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 530,
            left: 30,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
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
                  text: 'Have an account? ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 228, 225, 225),
                    fontSize: 15,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign In',
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
