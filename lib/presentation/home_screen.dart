import 'package:bookmytrainer/application/auth_bloc/auth_bloc.dart';
import 'package:bookmytrainer/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                try {
                  context.read<AuthBloc>().add(const AuthEvent.logout());
                  context.go('/');
                } catch (e) {
                  debugPrint(e.toString());
                  context.message(e.toString());
                }
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: const Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
