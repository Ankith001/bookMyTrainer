import 'package:bookmytrainer/presentation/auth/login_screen.dart';
import 'package:bookmytrainer/presentation/auth/sign_up_screen.dart';
import 'package:bookmytrainer/presentation/home_screen.dart';
import 'package:bookmytrainer/presentation/root.dart';
import 'package:bookmytrainer/presentation/trainer/trainer_list_screen.dart';
import 'package:bookmytrainer/presentation/trainer/trainer_form_screen.dart';
import 'package:bookmytrainer/presentation/trainer/trainer_detail_screen.dart';
import 'package:go_router/go_router.dart';

// Define the GoRouter
final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Root(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/trainers',
      builder: (context, state) => TrainerListScreen(),
    ),
    GoRoute(
      path: '/trainers/new',
      builder: (context, state) => const TrainerFormScreen(),
    ),
    GoRoute(
      path: '/trainers/:trainerId',
      builder: (context, state) => TrainerDetailScreen(
        trainerId: state.pathParameters['trainerId']!,
      ),
    ),
  ],
);
