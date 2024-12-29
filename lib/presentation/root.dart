import 'package:bookmytrainer/presentation/auth/login_screen.dart';
import 'package:bookmytrainer/presentation/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  static const route = "/";

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    return StreamBuilder(
      stream: auth.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          final user = auth.currentUser;
          if (user == null) {
            auth.signOut();
            return const LoginScreen();
          }
          return const HomeScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
