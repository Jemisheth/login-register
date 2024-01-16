import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup/login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Hello there!!!',
                    style: GoogleFonts.rocknRollOne(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Text(
                    'Welcome to the Rider',
                    style: GoogleFonts.rocknRollOne(fontSize: 14),
                  ),
                ),
                const SizedBox(height: 24),
                Image.asset(
                  'assets/welcome.jpg',
                  height: 300,
                  width: double.infinity,
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.blue,
                    ),
                    child: Center(
                        child: Text(
                      'Login',
                      style: GoogleFonts.rocknRollOne(color: Colors.white),
                    )),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.red,
                    ),
                    child: Center(
                        child: Text(
                      'Sign Up',
                      style: GoogleFonts.rocknRollOne(color: Colors.white),
                    )),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.black,
                    ),
                    child: Center(
                        child: Text(
                      'Skip',
                      style: GoogleFonts.rocknRollOne(color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
